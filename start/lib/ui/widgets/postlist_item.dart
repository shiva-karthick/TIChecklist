import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/core/services/api.dart';
import 'package:provider_architecture/locator.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:io' show Platform;

// Add the charts here
class PostListItem extends StatefulWidget {
  final Post post;
  final Function onTap;
  const PostListItem({this.post, this.onTap});

  @override
  _PostListItemState createState() => _PostListItemState();
}

class _PostListItemState extends State<PostListItem> {
  Api _api = locator<Api>();

  final deleteSnackBar = SnackBar(content: Text('Deleted successfully 🗑'));

  Future<String> get localPath async {
    final dir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    return dir.path;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              offset: Offset(0.0, 2.0),
              color: Color.fromARGB(80, 0, 0, 0),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Text(
                    '${widget.post.json['node_number']}',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
                  ),
                ),
                UIHelper.horizontalSpaceLarge(),
                Flexible(
                  flex: 1,
                  child: Text(
                    '${widget.post.json['vehicle_number']}',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpaceSmall(),
            Row(
              children: [
                Text(
                  'Date / Time : ',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
                ),
                Text(
                  '${widget.post.json['date']}',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
                ),
              ],
            ),
            UIHelper.verticalSpaceSmall(),
            Row(
              children: [
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 8.0,
                  animation: true,
                  percent: widget.post.json['total_faulty_items'] != null
                      ? ((100 / 114) * widget.post.json['total_faulty_items'])
                              .ceilToDouble() /
                          100
                      : 0,
                  center: new Text(
                    "${widget.post.json['total_faulty_items'] != null ? ((100 / 114) * widget.post.json['total_faulty_items']).ceilToDouble() : "nil"} %",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  footer: new Text(
                    "Faulty Items",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.purple,
                ),
                UIHelper.horizontalSpaceSmall(),
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 8.0,
                  animation: true,
                  percent: widget.post.json['total_missing_items'] != null
                      ? ((100 / 43) * widget.post.json['total_missing_items'])
                              .ceilToDouble() /
                          100
                      : 0,
                  center: new Text(
                    "${widget.post.json['total_missing_items'] != null ? ((100 / 43) * widget.post.json['total_missing_items']).ceilToDouble() : "nil"} %",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  footer: new Text(
                    "Missing Items",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.orange,
                ),
                UIHelper.horizontalSpaceSmall(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});

                    ShareExtend.share(
                        "${localPath}/${widget.post.json['node_number']}.json",
                        "file");
                  },
                  child: Icon(
                    Icons.share,
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpaceSmall(),
            Row(
              children: [
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 150,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: (((200 -
                                  (widget.post.json['total_missing_items'] !=
                                          null
                                      ? ((100 / 43) *
                                              widget.post
                                                  .json['total_missing_items'])
                                          .ceilToDouble()
                                      : 100) -
                                  (widget.post.json['total_faulty_items'] !=
                                          null
                                      ? ((100 / 114) *
                                              widget.post
                                                  .json['total_faulty_items'])
                                          .ceilToDouble()
                                      : 100)) /
                              2)
                          .ceilToDouble()) /
                      100,
                  center: Text(
                      "${((200 - (widget.post.json['total_missing_items'] != null ? ((100 / 43) * widget.post.json['total_missing_items']).ceilToDouble() : 100) - (widget.post.json['total_faulty_items'] != null ? ((100 / 114) * widget.post.json['total_faulty_items']).ceilToDouble() : 100)) / 2).ceilToDouble()} % completed"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green,
                ),
                UIHelper.horizontalSpaceSmall(),
                ElevatedButton(
                  onPressed: () async {
                    setState(() {});
                    _api.deleteFile(
                      "${await localPath}/${widget.post.json['node_number']}.json",
                    );
                    ScaffoldMessenger.of(context).showSnackBar(deleteSnackBar);
                    Navigator.pop(context); // pop current page
                    Navigator.pushNamed(context, "/"); // push it back in
                  },
                  child: Icon(
                    Icons.delete,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    // minimumSize: Size(10, 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
