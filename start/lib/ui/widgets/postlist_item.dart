import 'dart:io';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/core/services/api.dart';
import 'package:provider_architecture/locator.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import 'package:percent_indicator/percent_indicator.dart';

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

  final deleteSnackBar =
      SnackBar(content: Text('Deleted successfully 🗑, 🔄 refresh the page'));

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
                  percent: 0.7,
                  center: new Text(
                    "70.0%",
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
                  percent: 0.7,
                  center: new Text(
                    "30.0%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  footer: new Text(
                    "Missing Items",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.purple,
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
                  percent: widget.post.json['slider'] / 10.0,
                  center: Text("${widget.post.json['slider'] * 10}% completed"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green,
                ),
                UIHelper.horizontalSpaceSmall(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    _api.deleteFile(
                      File(
                          "/storage/emulated/0/Android/data/com.example.start/files/${widget.post.json['node_number']}.json"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(deleteSnackBar);
                    _api.getPostsForUser();
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
