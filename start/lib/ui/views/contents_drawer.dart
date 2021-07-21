// import 'package:flutter/material.dart';
// import 'package:provider_architecture/ui/views/rid_views/exterior.dart';
// import 'package:timeline_tile/timeline_tile.dart';

// class ContentsDrawer extends StatelessWidget {
//   const ContentsDrawer({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//               child: Text(
//                 'Radio Interface Detachment (RID) Technical Inspection Checklist (TIC) 📻',
//                 style: TextStyle(fontSize: 24),
//               ),
//             ),
//             TimelineTile(
//               alignment: TimelineAlign.manual,
//               lineXY: 0.1,
//               isFirst: true,
//               indicatorStyle: IndicatorStyle(
//                 width: 40,
//                 height: 40,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 8,
//                 ),
//                 drawGap: true,
//                 indicator: Container(
//                   decoration: const BoxDecoration(
//                     border: Border.fromBorderSide(
//                       BorderSide(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       '1',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 24,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               endChild: Card(
//                 child: ListTile(
//                   title: Text('Detachment Detail'),
//                   onTap: () {
//                     // Update the state of the app
//                     // Navigator.pop(context);

//                     // Navigator.pushNamed(context, '/rid/exterior');
//                     // Then close the drawer
//                   },
//                 ),
//               ),
//               startChild: Container(
//                 color: Colors.white,
//               ),
//             ),
//             TimelineTile(
//               alignment: TimelineAlign.manual,
//               lineXY: 0.1,
//               indicatorStyle: IndicatorStyle(
//                 width: 40,
//                 height: 40,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 8,
//                 ),
//                 drawGap: true,
//                 indicator: Container(
//                   decoration: const BoxDecoration(
//                     border: Border.fromBorderSide(
//                       BorderSide(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       '2.1',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               endChild: Card(
//                 child: ListTile(
//                   title: Text('Exterior'),
//                   onTap: () {
//                     // Update the state of the app
//                     // Navigator.pushNamed(context, '/test');
//                     // Then close the drawer
//                     // Navigator.pop(context);
//                   },
//                 ),
//               ),
//               startChild: Container(
//                 color: Colors.white,
//               ),
//             ),
//             TimelineTile(
//               alignment: TimelineAlign.manual,
//               lineXY: 0.1,
//               indicatorStyle: IndicatorStyle(
//                 width: 40,
//                 height: 40,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 8,
//                 ),
//                 drawGap: true,
//                 indicator: Container(
//                   decoration: const BoxDecoration(
//                     border: Border.fromBorderSide(
//                       BorderSide(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       '2.9',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               endChild: Card(
//                 child: ListTile(
//                   title: Text('Electrical System'),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               startChild: Container(
//                 color: Colors.white,
//               ),
//             ),
//             TimelineTile(
//               alignment: TimelineAlign.manual,
//               lineXY: 0.1,
//               indicatorStyle: IndicatorStyle(
//                 width: 40,
//                 height: 40,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 8,
//                 ),
//                 drawGap: true,
//                 indicator: Container(
//                   decoration: const BoxDecoration(
//                     border: Border.fromBorderSide(
//                       BorderSide(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       '2.15',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               endChild: Card(
//                 child: ListTile(
//                   title: Text('Miscellaneous'),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               startChild: Container(
//                 color: Colors.white,
//               ),
//             ),
//             TimelineTile(
//               alignment: TimelineAlign.manual,
//               lineXY: 0.1,
//               indicatorStyle: IndicatorStyle(
//                 width: 40,
//                 height: 40,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 8,
//                 ),
//                 drawGap: true,
//                 indicator: Container(
//                   decoration: const BoxDecoration(
//                     border: Border.fromBorderSide(
//                       BorderSide(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       '2.31',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               endChild: Card(
//                 child: ListTile(
//                   title: Text('Voice and radio Access System (VRAS)'),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               startChild: Container(
//                 color: Colors.white,
//               ),
//             ),
//             TimelineTile(
//               alignment: TimelineAlign.manual,
//               lineXY: 0.1,
//               indicatorStyle: IndicatorStyle(
//                 width: 40,
//                 height: 40,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 8,
//                 ),
//                 drawGap: true,
//                 indicator: Container(
//                   decoration: const BoxDecoration(
//                     border: Border.fromBorderSide(
//                       BorderSide(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       '2.36',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               endChild: Card(
//                 child: ListTile(
//                   title: Text('VHF Radio System'),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               startChild: Container(
//                 color: Colors.white,
//               ),
//             ),
//             TimelineTile(
//               alignment: TimelineAlign.manual,
//               lineXY: 0.1,
//               isLast: true,
//               indicatorStyle: IndicatorStyle(
//                 width: 40,
//                 height: 40,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 8,
//                 ),
//                 drawGap: true,
//                 indicator: Container(
//                   decoration: const BoxDecoration(
//                     border: Border.fromBorderSide(
//                       BorderSide(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Center(
//                     child: Text(
//                       '3',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 24,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               endChild: Card(
//                 child: ListTile(
//                   title: Text('Intra-Node Link'),
//                   onTap: () {
//                     // Update the state of the app
//                     // ...
//                     // Then close the drawer
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               startChild: Container(
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//           // child: Drawer(
//           //   // Add a ListView to the drawer. This ensures the user can scroll
//           //   // through the options in the drawer if there isn't enough vertical
//           //   // space to fit everything.
//           //   child: ListView(
//           //     // Important: Remove any padding from the ListView.
//           //     padding: EdgeInsets.zero,
//           //     children: <Widget>[
//           //       DrawerHeader(
//           //         decoration: BoxDecoration(
//           //           color: Colors.white,
//           //         ),
//           //         child: Text(
//           //           'Radio Interface Detachment (RID) Technical Inspection Checklist (TIC) 📻',
//           //           style: TextStyle(fontSize: 24),
//           //         ),
//           //       ),
//           //       TimelineTile(
//           //         alignment: TimelineAlign.manual,
//           //         lineXY: 0.1,
//           //         isFirst: true,
//           //         indicatorStyle: IndicatorStyle(
//           //           width: 40,
//           //           height: 40,
//           //           padding: const EdgeInsets.symmetric(
//           //             horizontal: 8,
//           //           ),
//           //           drawGap: true,
//           //           indicator: Container(
//           //             decoration: const BoxDecoration(
//           //               border: Border.fromBorderSide(
//           //                 BorderSide(
//           //                   color: Colors.grey,
//           //                 ),
//           //               ),
//           //               shape: BoxShape.circle,
//           //             ),
//           //             child: const Center(
//           //               child: Text(
//           //                 '1',
//           //                 style: TextStyle(
//           //                   color: Colors.deepOrange,
//           //                   fontSize: 24,
//           //                 ),
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //         endChild: Card(
//           //           child: ListTile(
//           //             title: Text('Detachment Detail'),
//           //             onTap: () {
//           //               // Update the state of the app
//           //               // ...
//           //               // Then close the drawer
//           //               Navigator.pop(context);
//           //             },
//           //           ),
//           //         ),
//           //         startChild: Container(
//           //           color: Colors.white,
//           //         ),
//           //       ),
//           //       TimelineTile(
//           //         alignment: TimelineAlign.manual,
//           //         lineXY: 0.1,
//           //         indicatorStyle: IndicatorStyle(
//           //           width: 40,
//           //           height: 40,
//           //           padding: const EdgeInsets.symmetric(
//           //             horizontal: 8,
//           //           ),
//           //           drawGap: true,
//           //           indicator: Container(
//           //             decoration: const BoxDecoration(
//           //               border: Border.fromBorderSide(
//           //                 BorderSide(
//           //                   color: Colors.grey,
//           //                 ),
//           //               ),
//           //               shape: BoxShape.circle,
//           //             ),
//           //             child: const Center(
//           //               child: Text(
//           //                 '2.1',
//           //                 style: TextStyle(
//           //                   color: Colors.deepOrange,
//           //                   fontSize: 18,
//           //                 ),
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //         endChild: Card(
//           //           child: ListTile(
//           //             title: Text('Exterior'),
//           //             onTap: () {
//           //               // Update the state of the app
//           //               // ...
//           //               // Then close the drawer
//           //               Navigator.pop(context);
//           //             },
//           //           ),
//           //         ),
//           //         startChild: Container(
//           //           color: Colors.white,
//           //         ),
//           //       ),
//           //       TimelineTile(
//           //         alignment: TimelineAlign.manual,
//           //         lineXY: 0.1,
//           //         indicatorStyle: IndicatorStyle(
//           //           width: 40,
//           //           height: 40,
//           //           padding: const EdgeInsets.symmetric(
//           //             horizontal: 8,
//           //           ),
//           //           drawGap: true,
//           //           indicator: Container(
//           //             decoration: const BoxDecoration(
//           //               border: Border.fromBorderSide(
//           //                 BorderSide(
//           //                   color: Colors.grey,
//           //                 ),
//           //               ),
//           //               shape: BoxShape.circle,
//           //             ),
//           //             child: const Center(
//           //               child: Text(
//           //                 '2.9',
//           //                 style: TextStyle(
//           //                   color: Colors.deepOrange,
//           //                   fontSize: 18,
//           //                 ),
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //         endChild: Card(
//           //           child: ListTile(
//           //             title: Text('Electrical System'),
//           //             onTap: () {
//           //               // Update the state of the app
//           //               // ...
//           //               // Then close the drawer
//           //               Navigator.pop(context);
//           //             },
//           //           ),
//           //         ),
//           //         startChild: Container(
//           //           color: Colors.white,
//           //         ),
//           //       ),
//           //       TimelineTile(
//           //         alignment: TimelineAlign.manual,
//           //         lineXY: 0.1,
//           //         indicatorStyle: IndicatorStyle(
//           //           width: 40,
//           //           height: 40,
//           //           padding: const EdgeInsets.symmetric(
//           //             horizontal: 8,
//           //           ),
//           //           drawGap: true,
//           //           indicator: Container(
//           //             decoration: const BoxDecoration(
//           //               border: Border.fromBorderSide(
//           //                 BorderSide(
//           //                   color: Colors.grey,
//           //                 ),
//           //               ),
//           //               shape: BoxShape.circle,
//           //             ),
//           //             child: const Center(
//           //               child: Text(
//           //                 '2.15',
//           //                 style: TextStyle(
//           //                   color: Colors.deepOrange,
//           //                   fontSize: 18,
//           //                 ),
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //         endChild: Card(
//           //           child: ListTile(
//           //             title: Text('Miscellaneous'),
//           //             onTap: () {
//           //               // Update the state of the app
//           //               // ...
//           //               // Then close the drawer
//           //               Navigator.pop(context);
//           //             },
//           //           ),
//           //         ),
//           //         startChild: Container(
//           //           color: Colors.white,
//           //         ),
//           //       ),
//           //       TimelineTile(
//           //         alignment: TimelineAlign.manual,
//           //         lineXY: 0.1,
//           //         indicatorStyle: IndicatorStyle(
//           //           width: 40,
//           //           height: 40,
//           //           padding: const EdgeInsets.symmetric(
//           //             horizontal: 8,
//           //           ),
//           //           drawGap: true,
//           //           indicator: Container(
//           //             decoration: const BoxDecoration(
//           //               border: Border.fromBorderSide(
//           //                 BorderSide(
//           //                   color: Colors.grey,
//           //                 ),
//           //               ),
//           //               shape: BoxShape.circle,
//           //             ),
//           //             child: const Center(
//           //               child: Text(
//           //                 '2.31',
//           //                 style: TextStyle(
//           //                   color: Colors.deepOrange,
//           //                   fontSize: 18,
//           //                 ),
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //         endChild: Card(
//           //           child: ListTile(
//           //             title: Text('Voice and radio Access System (VRAS)'),
//           //             onTap: () {
//           //               // Update the state of the app
//           //               // ...
//           //               // Then close the drawer
//           //               Navigator.pop(context);
//           //             },
//           //           ),
//           //         ),
//           //         startChild: Container(
//           //           color: Colors.white,
//           //         ),
//           //       ),
//           //       TimelineTile(
//           //         alignment: TimelineAlign.manual,
//           //         lineXY: 0.1,
//           //         indicatorStyle: IndicatorStyle(
//           //           width: 40,
//           //           height: 40,
//           //           padding: const EdgeInsets.symmetric(
//           //             horizontal: 8,
//           //           ),
//           //           drawGap: true,
//           //           indicator: Container(
//           //             decoration: const BoxDecoration(
//           //               border: Border.fromBorderSide(
//           //                 BorderSide(
//           //                   color: Colors.grey,
//           //                 ),
//           //               ),
//           //               shape: BoxShape.circle,
//           //             ),
//           //             child: const Center(
//           //               child: Text(
//           //                 '2.36',
//           //                 style: TextStyle(
//           //                   color: Colors.deepOrange,
//           //                   fontSize: 18,
//           //                 ),
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //         endChild: Card(
//           //           child: ListTile(
//           //             title: Text('VHF Radio System'),
//           //             onTap: () {
//           //               // Update the state of the app
//           //               // ...
//           //               // Then close the drawer
//           //               Navigator.pop(context);
//           //             },
//           //           ),
//           //         ),
//           //         startChild: Container(
//           //           color: Colors.white,
//           //         ),
//           //       ),
//           //       TimelineTile(
//           //         alignment: TimelineAlign.manual,
//           //         lineXY: 0.1,
//           //         isLast: true,
//           //         indicatorStyle: IndicatorStyle(
//           //           width: 40,
//           //           height: 40,
//           //           padding: const EdgeInsets.symmetric(
//           //             horizontal: 8,
//           //           ),
//           //           drawGap: true,
//           //           indicator: Container(
//           //             decoration: const BoxDecoration(
//           //               border: Border.fromBorderSide(
//           //                 BorderSide(
//           //                   color: Colors.grey,
//           //                 ),
//           //               ),
//           //               shape: BoxShape.circle,
//           //             ),
//           //             child: const Center(
//           //               child: Text(
//           //                 '3',
//           //                 style: TextStyle(
//           //                   color: Colors.deepOrange,
//           //                   fontSize: 24,
//           //                 ),
//           //               ),
//           //             ),
//           //           ),
//           //         ),
//           //         endChild: Card(
//           //           child: ListTile(
//           //             title: Text('Intra-Node Link'),
//           //             onTap: () {
//           //               // Update the state of the app
//           //               // ...
//           //               // Then close the drawer
//           //               Navigator.pop(context);
//           //             },
//           //           ),
//           //         ),
//           //         startChild: Container(
//           //           color: Colors.white,
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ),
        