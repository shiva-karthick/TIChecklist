import 'package:flutter/material.dart';

Widget generateFirstColumnRowExterior(BuildContext context, int index) {
  return Column(
    children: [
      Container(
        child: Text(
          "2.1 FO Signal Entry Panel",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 110,
        color: Colors.orange,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
      Container(
        child: Text(
          "2.2 Movement Reduction Device (MRD)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 90,
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
        height: 115,
        color: Colors.grey,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
      Container(
        child: Text(
          "2.3 Antenna Holder (MX6808)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 62,
        color: Colors.orange,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
      Container(
        child: Text(
          "2.4 Ladder",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 115,
        color: Colors.orange,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
      Container(
        child: Text(
          "2.5 (12M) Telescopic Mast",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 115,
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
        height: 125,
        color: Colors.grey,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
      Container(
        child: Text(
          "2.6 Surge Arrestor",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 62,
        color: Colors.orange,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
      Container(
        child: Text(
          "2.7 RF Signal Entry Panel",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 135,
        color: Colors.orange,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
      Container(
        child: Text(
          "2.8 Telescopic Arm (MX6808 Mounting)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 100,
        height: 85,
        color: Colors.orange,
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        alignment: Alignment.centerLeft,
      ),
    ],
  );
}


// Example code
// Widget _generateFirstColumnRow(BuildContext context, int index) {
//   return Column(
//     children: [
//       Container(
//         child: Text(
//           "2.1 FO Signal Entry Panel",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 110,
//         color: Colors.orange,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//       Container(
//         child: Text(
//           "2.2 Movement Reduction Device (MRD)",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 90,
//         color: Colors.orange,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//       Container(
//         child: Text(
//           "",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 115,
//         color: Colors.grey,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//       Container(
//         child: Text(
//           "2.3 Antenna Holder (MX6808)",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 62,
//         color: Colors.orange,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//       Container(
//         child: Text(
//           "2.4 Ladder",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 115,
//         color: Colors.orange,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//       Container(
//         child: Text(
//           "2.5 (12M) Telescopic Mast",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 115,
//         color: Colors.orange,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//       Container(
//         child: Text(
//           "",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 125,
//         color: Colors.grey,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//       Container(
//         child: Text(
//           "2.6 Surge Arrestor",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 62,
//         color: Colors.orange,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//       Container(
//         child: Text(
//           "2.7 RF Signal Entry Panel",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 135,
//         color: Colors.orange,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//       Container(
//         child: Text(
//           "2.8 Telescopic Arm (MX6808 Mounting)",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         width: 100,
//         height: 85,
//         color: Colors.orange,
//         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//         alignment: Alignment.centerLeft,
//       ),
//     ],
//   );
// }
