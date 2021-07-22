import 'package:flutter/material.dart';

Widget generateFirstColumnRowIntraNodeLink(BuildContext context, int index) {
  return Column(
    children: [
      Container(
        child: Text(
          "3.1 RID to DSD",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 120,
        color: Colors.orange,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
      Container(
        child: Text(
          "",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 300,
        color: Colors.grey,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
    ],
  );
}
