import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/core/viewModels/home_model.dart';
import 'package:provider_architecture/core/viewModels/postview_model.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import 'package:provider_architecture/ui/views/base_view.dart';
import 'package:provider_architecture/ui/views/home_view.dart';
import 'package:provider_architecture/ui/widgets/completion_status.dart';
import 'package:provider_architecture/ui/widgets/fmw1_personnel.dart';
import 'package:provider_architecture/ui/widgets/other_personnel.dart';
import 'package:provider_architecture/ui/widgets/remarks.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:provider_architecture/core/viewModels/vehicle_model.dart';
import 'package:provider_architecture/ui/views/rid_post_views/detachment_detail.dart';
import 'package:provider_architecture/ui/views/rid_post_views/electrical_system_widgets/FirstColumnRowElectricalSystem.dart';
import 'package:provider_architecture/ui/views/rid_post_views/electrical_system_widgets/rightHandSideColumnRowElectricalSystem.dart';
import 'package:provider_architecture/ui/views/rid_post_views/exterior_widgets/FirstColumnRowExterior.dart';
import 'package:provider_architecture/ui/views/rid_post_views/exterior_widgets/rightHandSideColumnRowExterior.dart';
import 'package:provider_architecture/ui/views/rid_post_views/intra_node_link/FirstColumnRowIntraNodeLink.dart';
import 'package:provider_architecture/ui/views/rid_post_views/intra_node_link/rightHandSideColumnRowIntraNodeLink.dart';
import 'package:provider_architecture/ui/views/rid_post_views/misc_part1/FirstColumnRowMiscPart1.dart';
import 'package:provider_architecture/ui/views/rid_post_views/misc_part1/rightHandSideColumnRowMiscPart1.dart';
import 'package:provider_architecture/ui/views/rid_post_views/misc_part2/FirstColumnRowMiscPart2.dart';
import 'package:provider_architecture/ui/views/rid_post_views/misc_part2/rightHandSideColumnRowMiscPart2.dart';
import 'package:provider_architecture/ui/views/rid_post_views/vhf_radio_system/FirstColumnRowVHF.dart';
import 'package:provider_architecture/ui/views/rid_post_views/vhf_radio_system/rightHandSideColumnRowVHF.dart';
import 'package:provider_architecture/ui/views/rid_post_views/vras/FirstColumnRowVRAS.dart';
import 'package:provider_architecture/ui/views/rid_post_views/vras/rightHandSideColumnRowVRAS.dart';
import 'package:provider_architecture/ui/widgets/global.dart' as global;

class PostView extends StatefulWidget {
  final Post post;
  PostView({this.post});

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  final _formKey = global.formKey;
  // final _formKey = FormKeys().formKey;

  Map<String, dynamic> data;

  bool visibilityExterior = false;
  bool visibilityElectricalSystem = false;
  bool visibilityMiscellaneousPart1 = false;
  bool visibilityMiscellaneousPart2 = false;

  bool visibilityVRAS = false;
  bool visibilityVHFRadioSystem = false;
  bool visibilityIntraNodeLink = false;

  final saveSnackBar = SnackBar(content: Text('Saved Successfully 👍'));
  final undoSnackBar = SnackBar(content: Text('Undo 🔄'));
  final errorSnackBar = SnackBar(content: Text('Fill up required fields❗️ 🔺'));

  void save(VehicleModel model) {
    final validationSuccess = _formKey.currentState.validate();
    if (validationSuccess) {
      _formKey.currentState.save();
      data = _formKey.currentState.value;
      model.requestPermissionAndWriteData(data);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(errorSnackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<VehicleModel>(
      onModelReady: (model) {
        // Call something on the model,
        // perform any starting logic code we want to use,
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.arrow_back_ios_new),
          // ),
          title: Text('Diving deep into RID'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.undo),
              onPressed: () {
                _formKey.currentState.reset();
                ScaffoldMessenger.of(context).showSnackBar(undoSnackBar);
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            final validationSuccess = _formKey.currentState.validate();
            if (validationSuccess) {
              _formKey.currentState.save();
              data = _formKey.currentState.value;
              model.requestPermissionAndWriteData(data);
              // print(_formKey.currentState.value);

              /// Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(saveSnackBar);
            }

            // model.readData();
          },
          icon: Icon(Icons.thumb_up),
          label: Text('Save'),
          backgroundColor: Colors.pink,
        ),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                child: FormBuilder(
                  key: _formKey,
                  child: ListView(
                    // Column
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      DetachmentDetail(widget.post),
                      ElevatedButton(
                        onPressed: () {
                          visibilityExterior = !visibilityExterior;
                          save(model);
                          setState(() {});
                        },
                        child: Text("Exterior ↕️"),
                      ),
                      visibilityExterior
                          ? Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: visibilityExterior,
                              child: SizedBox(
                                width:
                                    1000, // Should be more than the rightHandSideColumnWidth
                                height: 1100, //
                                child: HorizontalDataTable(
                                  leftHandSideColumnWidth: 100,
                                  rightHandSideColumnWidth: 800,
                                  isFixedHeader: true,
                                  rowSeparatorWidget: const Divider(
                                    color: Colors.black54,
                                    height: 1.0,
                                    thickness: 0.0,
                                  ),
                                  verticalScrollbarStyle: const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    thumbColor: Colors.black,
                                    radius: Radius.circular(5.0),
                                  ),
                                  horizontalScrollbarStyle:
                                      const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thumbColor: Colors.black,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  headerWidgets: _getTitleWidget(),
                                  leftSideItemBuilder: (context, index) {
                                    return generateFirstColumnRowExterior(
                                        context, index);
                                  },
                                  rightSideItemBuilder: (context, index) {
                                    return generateRightHandSideColumnRowExterior(
                                        context, index, widget.post);
                                  },

                                  itemCount: 1,
                                  // Table(
                                  //   border: TableBorder.all(),
                                  //   defaultColumnWidth: IntrinsicColumnWidth(),
                                  //   defaultVerticalAlignment:
                                  //       TableCellVerticalAlignment.middle,
                                  //   children: <TableRow>[
                                  //     TableRow(
                                  //       children: <Widget>[
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text(
                                  //             "Serial Number",
                                  //             style: TextStyle(
                                  //               fontSize: 16,
                                  //               fontWeight: FontWeight.bold,
                                  //             ),
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text(
                                  //             "Equipment",
                                  //             style: TextStyle(
                                  //               fontSize: 16,
                                  //               fontWeight: FontWeight.bold,
                                  //             ),
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text(
                                  //             "Task Description",
                                  //             style: TextStyle(
                                  //               fontSize: 16,
                                  //               fontWeight: FontWeight.bold,
                                  //             ),
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text(
                                  //             "Expected Results",
                                  //             style: TextStyle(
                                  //               fontSize: 16,
                                  //               fontWeight: FontWeight.bold,
                                  //             ),
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text(
                                  //             "Pass/Fail",
                                  //             style: TextStyle(
                                  //               fontSize: 16,
                                  //               fontWeight: FontWeight.bold,
                                  //             ),
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     TableRow(
                                  //       children: <Widget>[
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text(
                                  //             "Serial Number",
                                  //             style: TextStyle(),
                                  //           ),
                                  //         ),
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text("Equipment"),
                                  //         ),
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text("Task Description"),
                                  //         ),
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text("Expected Results"),
                                  //         ),
                                  //         Container(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Text("Pass/Fail"),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ],
                                  // ),
                                ),
                              ),
                            )
                          : Container(),
                      ElevatedButton(
                        onPressed: () {
                          visibilityElectricalSystem =
                              !visibilityElectricalSystem;
                          save(model);
                          setState(() {});
                        },
                        child: Text("Electrical System ↕️"),
                      ),
                      visibilityElectricalSystem
                          ? Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: visibilityElectricalSystem,
                              child: SizedBox(
                                width:
                                    1000, // Should be more than the rightHandSideColumnWidth
                                height: 2650, //
                                child: HorizontalDataTable(
                                  leftHandSideColumnWidth: 100,
                                  rightHandSideColumnWidth: 800,
                                  isFixedHeader: true,
                                  rowSeparatorWidget: const Divider(
                                    color: Colors.black54,
                                    height: 1.0,
                                    thickness: 0.0,
                                  ),
                                  verticalScrollbarStyle: const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  horizontalScrollbarStyle:
                                      const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  headerWidgets: _getTitleWidget(),
                                  leftSideItemBuilder: (context, index) {
                                    return generateFirstColumnRowElectricalSystem(
                                        context, index);
                                  },
                                  rightSideItemBuilder: (context, index) {
                                    return generateRightHandSideColumnRowElectricalSystem(
                                        context, index, widget.post);
                                  },
                                  itemCount: 1,
                                ),
                              ),
                            )
                          : Container(),
                      ElevatedButton(
                        onPressed: () {
                          visibilityMiscellaneousPart1 =
                              !visibilityMiscellaneousPart1;
                          save(model);
                          setState(() {});
                        },
                        child: Text("Miscellaneous part 1 (2.15-2.22) ↕️"),
                      ),
                      visibilityMiscellaneousPart1
                          ? Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: visibilityMiscellaneousPart1,
                              child: SizedBox(
                                width:
                                    1000, // Should be more than the rightHandSideColumnWidth
                                height: 2150, //
                                child: HorizontalDataTable(
                                  leftHandSideColumnWidth: 100,
                                  rightHandSideColumnWidth: 800,
                                  isFixedHeader: true,
                                  rowSeparatorWidget: const Divider(
                                    color: Colors.black54,
                                    height: 1.0,
                                    thickness: 0.0,
                                  ),
                                  verticalScrollbarStyle: const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  horizontalScrollbarStyle:
                                      const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  headerWidgets: _getTitleWidget(),
                                  leftSideItemBuilder: (context, index) {
                                    return generateFirstColumnRowMiscPart1(
                                        context, index);
                                  },
                                  rightSideItemBuilder: (context, index) {
                                    return generateRightHandSideColumnRowMiscPart1(
                                        context, index, widget.post);
                                  },
                                  itemCount: 1,
                                ),
                              ),
                            )
                          : Container(),
                      ElevatedButton(
                        onPressed: () {
                          visibilityMiscellaneousPart2 =
                              !visibilityMiscellaneousPart2;
                          save(model);
                          setState(() {});
                        },
                        child: Text("Miscellaneous part 2 (2.23-2.30) ↕️"),
                      ),
                      visibilityMiscellaneousPart2
                          ? Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: visibilityMiscellaneousPart2,
                              child: SizedBox(
                                width:
                                    1000, // Should be more than the rightHandSideColumnWidth
                                height: 2150, //
                                child: HorizontalDataTable(
                                  leftHandSideColumnWidth: 100,
                                  rightHandSideColumnWidth: 800,
                                  isFixedHeader: true,
                                  rowSeparatorWidget: const Divider(
                                    color: Colors.black54,
                                    height: 1.0,
                                    thickness: 0.0,
                                  ),
                                  verticalScrollbarStyle: const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  horizontalScrollbarStyle:
                                      const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  headerWidgets: _getTitleWidget(),
                                  leftSideItemBuilder: (context, index) {
                                    return generateFirstColumnRowMiscPart2(
                                        context, index);
                                  },
                                  rightSideItemBuilder: (context, index) {
                                    return generateRightHandSideColumnRowMiscPart2(
                                        context, index, widget.post);
                                  },
                                  itemCount: 1,
                                ),
                              ),
                            )
                          : Container(),
                      ElevatedButton(
                        onPressed: () {
                          visibilityVRAS = !visibilityVRAS;
                          save(model);
                          setState(() {});
                        },
                        child: Text("Voice and Radio Access System (VRAS) ↕️"),
                      ),
                      visibilityVRAS
                          ? Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: visibilityVRAS,
                              child: SizedBox(
                                width:
                                    1000, // Should be more than the rightHandSideColumnWidth
                                height: 2400, //
                                child: HorizontalDataTable(
                                  leftHandSideColumnWidth: 100,
                                  rightHandSideColumnWidth: 800,
                                  isFixedHeader: true,
                                  rowSeparatorWidget: const Divider(
                                    color: Colors.black54,
                                    height: 1.0,
                                    thickness: 0.0,
                                  ),
                                  verticalScrollbarStyle: const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  horizontalScrollbarStyle:
                                      const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  headerWidgets: _getTitleWidget(),
                                  leftSideItemBuilder: (context, index) {
                                    return generateFirstColumnRowVRAS(
                                        context, index);
                                  },
                                  rightSideItemBuilder: (context, index) {
                                    return generateRightHandSideColumnRowVRAS(
                                        context, index, widget.post);
                                  },
                                  itemCount: 1,
                                ),
                              ),
                            )
                          : Container(),
                      ElevatedButton(
                        onPressed: () {
                          visibilityVHFRadioSystem = !visibilityVHFRadioSystem;
                          save(model);
                          setState(() {});
                        },
                        child: Text("VHF Radio System↕️"),
                      ),
                      visibilityVHFRadioSystem
                          ? Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: visibilityVHFRadioSystem,
                              child: SizedBox(
                                width:
                                    1000, // Should be more than the rightHandSideColumnWidth
                                height: 4200, //
                                child: HorizontalDataTable(
                                  leftHandSideColumnWidth: 100,
                                  rightHandSideColumnWidth: 800,
                                  isFixedHeader: true,
                                  rowSeparatorWidget: const Divider(
                                    color: Colors.black54,
                                    height: 1.0,
                                    thickness: 0.0,
                                  ),
                                  verticalScrollbarStyle: const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  horizontalScrollbarStyle:
                                      const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  headerWidgets: _getTitleWidget(),
                                  leftSideItemBuilder: (context, index) {
                                    return generateFirstColumnRowVHF(
                                        context, index);
                                  },
                                  rightSideItemBuilder: (context, index) {
                                    return generateRightHandSideColumnRowVHF(
                                        context, index, widget.post);
                                  },
                                  itemCount: 1,
                                ),
                              ),
                            )
                          : Container(),
                      ElevatedButton(
                        onPressed: () {
                          visibilityIntraNodeLink = !visibilityIntraNodeLink;
                          save(model);
                          setState(() {});
                        },
                        child: Text("Intra-Node Link↕️"),
                      ),
                      visibilityIntraNodeLink
                          ? Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: visibilityIntraNodeLink,
                              child: SizedBox(
                                width:
                                    1000, // Should be more than the rightHandSideColumnWidth
                                height: 530, //
                                child: HorizontalDataTable(
                                  leftHandSideColumnWidth: 100,
                                  rightHandSideColumnWidth: 800,
                                  isFixedHeader: true,
                                  rowSeparatorWidget: const Divider(
                                    color: Colors.black54,
                                    height: 1.0,
                                    thickness: 0.0,
                                  ),
                                  verticalScrollbarStyle: const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  horizontalScrollbarStyle:
                                      const ScrollbarStyle(
                                    isAlwaysShown: true,
                                    thickness: 4.0,
                                    radius: Radius.circular(5.0),
                                  ),
                                  headerWidgets: _getTitleWidget(),
                                  leftSideItemBuilder: (context, index) {
                                    return generateFirstColumnRowIntraNodeLink(
                                        context, index);
                                  },
                                  rightSideItemBuilder: (context, index) {
                                    return generateRightHandSideColumnRowIntraNodeLink(
                                        context, index, widget.post);
                                  },
                                  itemCount: 1,
                                ),
                              ),
                            )
                          : Container(),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'FMW1 personnel',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      UIHelper.verticalSpaceSmall(),
                      FMW1personnel(
                        fmw1Personnel: "${widget.post.json["fmw1Personnel"]}",
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Other personnels',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      UIHelper.verticalSpaceSmall(),
                      OtherPersonnel(
                        otherPersonnel: "${widget.post.json["otherPersonnel"]}",
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Remarks i.e vehicle status',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Remarks(
                        remarks: "${widget.post.json["remarks"]}",
                      ),
                      CompletionStatus(
                        value: 7.0,
                      ),
                      UIHelper.verticalSpaceLarge(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _getTitleWidget() {
  return [
    // TextButton(
    //   style: TextButton.styleFrom(
    //     padding: EdgeInsets.zero,
    //   ),
    //   child: Text("Name"),
    //   onPressed: () {},
    // ),
    _getTitleItemWidget('S/N', 100),
    _getTitleItemWidget('Task Description', 125),
    _getTitleItemWidget('Expected Results', 175),
    _getTitleItemWidget('Pass/Fail', 100),
    _getTitleItemWidget('Remarks', 120),
    _getTitleItemWidget('Accounting/Notes', 150),
  ];
}

Widget _getTitleItemWidget(String label, double width) {
  return Container(
    child: Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
    width: width,
    height: 56,
    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
    alignment: Alignment.centerLeft,
  );
}
