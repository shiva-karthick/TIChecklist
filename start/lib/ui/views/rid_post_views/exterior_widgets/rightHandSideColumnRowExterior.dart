import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';

Widget generateRightHandSideColumnRowExterior(
    BuildContext context, int index, Post data) {
  double remarksWidth = 168;
  double remarksHeight = 96;

  return InteractiveViewer(
    child: Column(
      children: [
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check physical condition"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("-Ports are not rusty or damaged"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "FOSEP_faulty",
                initialValue: data.json["FOSEP_faulty"] != null
                    ? data.json["FOSEP_faulty"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "FOSEP_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["FOSEP_remarks"] != null
                    ? data.json["FOSEP_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'FO SEP',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "FOSEP_missing",
                initialValue: data.json["FOSEP_missing"] != null
                    ? data.json["FOSEP_missing"]
                    : false,
                title: Text(
                  "1 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 52,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check quantity and physical condition"),
              width: 125,
              height: 75,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "- Accounted, no damage and safety pin in place & secure"),
              width: 175,
              height: 100,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "MRD_faulty_1",
                initialValue: data.json["MRD_faulty_1"] != null
                    ? data.json["MRD_faulty_1"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "MRD_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["MRD_remarks_1"] != null
                    ? data.json["MRD_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'MRD (a.)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "MRD_missing_1",
                initialValue: data.json["MRD_missing_1"] != null
                    ? data.json["MRD_missing_1"]
                    : false,
                title: Text(
                  "4 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 52,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("b. Deployment Check"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- MRD able to extend and lock in place"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "MRD_faulty_2",
                initialValue: data.json["MRD_faulty_2"] != null
                    ? data.json["MRD_faulty_2"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "MRD_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["MRD_remarks_2"] != null
                    ? data.json["MRD_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'MRD (b.)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check physical condition"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Able to deploy and no damage"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "antenna_holder_faulty",
                initialValue: data.json["antenna_holder_faulty"] != null
                    ? data.json["antenna_holder_faulty"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "antenna_holder_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["antenna_holder_remarks"] != null
                    ? data.json["antenna_holder_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Antenna Holder',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "antenna_holder_missing",
                initialValue: data.json["antenna_holder_missing"] != null
                    ? data.json["antenna_holder_missing"]
                    : false,
                title: Text(
                  "2 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 52,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check physical condition"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Able to deploy and no damage"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "ladder_faulty",
                initialValue: data.json["ladder_faulty"] != null
                    ? data.json["ladder_faulty"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "ladder_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["ladder_remarks"] != null
                    ? data.json["ladder_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Ladder',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "ladder_missing",
                initialValue: data.json["ladder_missing"] != null
                    ? data.json["ladder_missing"]
                    : false,
                title: Text(
                  "1 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 52,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check bolts securing both brackets to the mast"),
              width: 125,
              height: 64,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Bolts are tight and no damage"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "mast_12m_faulty_1",
                initialValue: data.json["mast_12m_faulty_1"] != null
                    ? data.json["mast_12m_faulty_1"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "mast_12m_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["mast_12m_remarks_1"] != null
                    ? data.json["mast_12m_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: '12m Mast (a.)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "mast_12m_missing_1",
                initialValue: data.json["mast_12m_missing_1"] != null
                    ? data.json["mast_12m_missing_1"]
                    : false,
                title: Text(
                  "2 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 52,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("b. Next PM due date"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderDateTimePicker(
                    name: "left_mast_12m_due_date",
                    initialValue: data.json["left_mast_12m_due_date"] != null
                        ? DateFormat("yyyy-MM-dd hh:mm:ss")
                            .parse(data.json["left_mast_12m_due_date"])
                        : DateTime.now(),
                    decoration: InputDecoration(
                      labelText: 'Left Mast due date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderDateTimePicker(
                    name: "right_mast_12m_due_date",
                    initialValue: data.json["right_mast_12m_due_date"] != null
                        ? DateFormat("yyyy-MM-dd hh:mm:ss")
                            .parse(data.json["right_mast_12m_due_date"])
                        : DateTime.now(),
                    decoration: InputDecoration(
                      labelText: 'Right Mast due date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 130,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "mast_12m_faulty_2",
                initialValue: data.json["mast_12m_faulty_2"] != null
                    ? data.json["mast_12m_faulty_2"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "mast_12m_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["mast_12m_remarks_2"] != null
                    ? data.json["mast_12m_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: '12m Mast (b.)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check physical condition"),
              width: 125,
              height: 62,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Not rusty or damaged"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "surge_arrestor_faulty",
                initialValue: data.json["surge_arrestor_faulty"] != null
                    ? data.json["surge_arrestor_faulty"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "surge_arrestor_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["surge_arrestor_remarks"] != null
                    ? data.json["surge_arrestor_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Surge Arrestor',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "surge_arrestor_missing",
                initialValue: data.json["surge_arrestor_missing"] != null
                    ? data.json["surge_arrestor_missing"]
                    : false,
                title: Text(
                  "4 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 52,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check physical condition"),
              width: 125,
              height: 62,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Ports are not rusty or damaged"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "RFSEP_faulty",
                initialValue: data.json["RFSEP_faulty"] != null
                    ? data.json["RFSEP_faulty"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "RFSEP_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["RFSEP_remarks"] != null
                    ? data.json["RFSEP_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RF Signal Entrance Panel',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "RFSEP_missing",
                initialValue: data.json["RFSEP_missing"] != null
                    ? data.json["RFSEP_missing"]
                    : false,
                title: Text(
                  "6 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 52,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check physical condition"),
              width: 125,
              height: 62,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- No damage"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "telescopic_arm_faulty",
                initialValue: data.json["telescopic_arm_faulty"] != null
                    ? data.json["telescopic_arm_faulty"]
                    : false,
                title: Text(""),
              ),
              width: 50,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: "telescopic_arm_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["telescopic_arm_remarks"] != null
                    ? data.json["telescopic_arm_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Telescopic Arm',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "telescopic_arm_missing",
                initialValue: data.json["telescopic_arm_missing"] != null
                    ? data.json["telescopic_arm_missing"]
                    : false,
                title: Text(
                  "2 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 52,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        )
      ],
    ),
  );
}





// Example code
// Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
//   return Column(
//     children: [
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text("FO Signal Entry Panel"),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("a. Check physical condition"),
//             width: 125,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("-Ports are not rusty or damaged"),
//             width: 175,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.center,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "FOSEP_faulty",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "FOSEP_remarks",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "FOSEP_missing",
//               initialValue: false,
//               title: Text("1 pc"),
//             ),
//             width: 100,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       ),
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text("Movement Reduction Device (MRD)"),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("a. Check quantity and physical condition"),
//             width: 125,
//             height: 75,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child:
//                 Text("- Accounted, no damage and safety pin in place & secure"),
//             width: 175,
//             height: 100,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "MRD1_faulty",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "MRD1_remarks",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "MRD1_missing",
//               initialValue: false,
//               title: Text("4 pcs"),
//             ),
//             width: 100,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       ),
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text(""),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("b. Deployment Check"),
//             width: 125,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("- MRD able to extend and lock in place"),
//             width: 175,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "MRD2_faulty",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "MRD2_remarks",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       ),
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text("Antenna holder (MX6808)"),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("a. Check physical condition"),
//             width: 125,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("- Able to deploy and no damage"),
//             width: 175,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "AntennaHolder_faulty",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "AntennaHolder_remarks",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "AntennaHolder_missing",
//               initialValue: false,
//               title: Text("2 pcs"),
//             ),
//             width: 100,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       ),
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text("Ladder"),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("a. Check physical condition"),
//             width: 125,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("- Able to deploy and no damage"),
//             width: 175,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "Ladder_faulty",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "Ladder_remarks",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "Ladder_missing",
//               initialValue: false,
//               title: Text("1 pcs"),
//             ),
//             width: 100,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       ),
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text("12M Telescopic Mast"),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("a. Check bolts securing both brackets to the mast"),
//             width: 125,
//             height: 62,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("- Bolts are tight and no damage"),
//             width: 175,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "Mast12m_faulty_1",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "Mast12m_remarks_1",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "Mast12m_missing_1",
//               initialValue: false,
//               title: Text("2 pcs"),
//             ),
//             width: 100,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       ),
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text(""),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("b. Next PM due date"),
//             width: 125,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Column(
//               children: <Widget>[
//                 FormBuilderDateTimePicker(
//                   name: "Mast12mLeft_date",
//                   initialValue: DateTime.now(),
//                   decoration: InputDecoration(
//                     labelText: 'Left Mast',
//                     border: OutlineInputBorder(
//                         // borderRadius: BorderRadius.circular(10),
//                         ),
//                   ),
//                 ),
//                 UIHelper.verticalSpaceSmall(),
//                 FormBuilderDateTimePicker(
//                   name: "Mast12mRight_date",
//                   initialValue: DateTime.now(),
//                   decoration: InputDecoration(
//                     labelText: 'Right Mast',
//                     border: OutlineInputBorder(
//                          borderRadius: BorderRadius.circular(10),
//                         ),
//                   ),
//                 ),
//               ],
//             ),
//             width: 175,
//             height: 130,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "Mast12m_faulty_2",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "Mast12m_remarks_2",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       ),
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text("Surge Arrestor"),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("a. Check physical condition"),
//             width: 125,
//             height: 62,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("- Not rusty or damaged"),
//             width: 175,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "SurgeArrestor_faulty",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "SurgeArrestor_remarks",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "SurgeArrestor_missing",
//               initialValue: false,
//               title: Text("4 pcs"),
//             ),
//             width: 100,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       ),
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text("RF Signal Entry Panel"),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("a. Check physical condition"),
//             width: 125,
//             height: 62,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("- Ports are not rusty or damaged"),
//             width: 175,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "RFSEP_faulty",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "RFSEP_remarks",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "RFSEP_missing",
//               initialValue: false,
//               title: Text("6 pcs"),
//             ),
//             width: 100,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       ),
//       Row(
//         children: <Widget>[
//           Container(
//             child: Text("Telescopic arm (MX6808 mounting)"),
//             width: 150,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("a. Check physical condition"),
//             width: 125,
//             height: 62,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: Text("- No damage"),
//             width: 175,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "TelescopicArm_faulty",
//               initialValue: false,
//               title: Text(""),
//             ),
//             width: 50,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderTextField(
//               name: "TelescopicArm_remarks",
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//             ),
//             width: 168,
//             height: 144,
//             padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//           Container(
//             child: FormBuilderCheckbox(
//               name: "TelescopicArm_missing",
//               initialValue: false,
//               title: Text("6 pcs"),
//             ),
//             width: 100,
//             height: 52,
//             padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//             alignment: Alignment.centerLeft,
//           ),
//         ],
//       )
//     ],
//   );
// }
