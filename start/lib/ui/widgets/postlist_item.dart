import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/core/models/post.dart';

// Add the charts here
class PostListItem extends StatelessWidget {
  final Post post;
  final Function onTap;
  const PostListItem({this.post, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            Text(
              '${post.json['node_number']}',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
            ),
            Text(
              '${post.json['location']}',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
            ),
            Text(
              '12 Missing Items',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
            ),
            Text(
              '10 Faulty Items',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
