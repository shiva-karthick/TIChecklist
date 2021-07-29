import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';

Widget generateRightHandSideColumnRowMiscPart1(
    BuildContext context, int index, Post data) {
  double remarksWidth = 172;
  double remarksHeight = 136;

  return InteractiveViewer(
    child: Column(
      children: [
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check fluorescent lights"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child:
                  Text("- Able to light up accordingly (2X blue and 2X white)"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "light_system_faulty",
                initialValue: data.json["light_system_faulty"] != null
                    ? data.json["light_system_faulty"]
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
                name: "light_system_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["light_system_remarks"] != null
                    ? data.json["light_system_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Light System',
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
                name: "light_system_missing",
                initialValue: data.json["light_system_missing"] != null
                    ? data.json["light_system_missing"]
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
              child: Text("a. Check Ventilation Fans"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Fans are clean and in working condition"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "fans_faulty_1",
                initialValue: data.json["fans_faulty_1"] != null
                    ? data.json["fans_faulty_1"]
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
                name: "fans_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["fans_remarks_1"] != null
                    ? data.json["fans_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Fans (a)',
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
                name: "fans_missing_1",
                initialValue: data.json["fans_missing_1"] != null
                    ? data.json["fans_missing_1"]
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
              child: Text("b. Check Rack Fans"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Fans are clean and in working condition"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "fans_faulty_2",
                initialValue: data.json["fans_faulty_2"] != null
                    ? data.json["fans_faulty_2"]
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
                name: "fans_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["fans_remarks_2"] != null
                    ? data.json["fans_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Fans (b)',
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
                name: "fans_missing_2",
                initialValue: data.json["fans_missing_2"] != null
                    ? data.json["fans_missing_2"]
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
              child: Text("a. Check medical supply"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "- Refer quantity as stated in list and check for expired items"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "first_aid_box_faulty",
                initialValue: data.json["first_aid_box_faulty"] != null
                    ? data.json["first_aid_box_faulty"]
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
                name: "first_aid_box_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["first_aid_box_remarks"] != null
                    ? data.json["first_aid_box_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'First Aid Box',
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
                name: "first_aid_box_missing",
                initialValue: data.json["first_aid_box_missing"] != null
                    ? data.json["first_aid_box_missing"]
                    : false,
                title: Text(
                  "1 box",
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
              child: Text(
                  "a. Check for physical condition, loose bolts, nuts and wiring connection"),
              width: 125,
              height: 85,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- All FO are connected according to the labels"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "fiber_patch_panel_faulty_1",
                initialValue: data.json["fiber_patch_panel_faulty_1"] != null
                    ? data.json["fiber_patch_panel_faulty_1"]
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
                name: "fiber_patch_panel_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["fiber_patch_panel_remarks_1"] != null
                    ? data.json["fiber_patch_panel_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'FPP (a)',
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
                name: "fiber_patch_panel_missing_1",
                initialValue: data.json["fiber_patch_panel_missing_1"] != null
                    ? data.json["fiber_patch_panel_missing_1"]
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
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text(
                  "b. Connect FOCA loopback to SEP, check the losses reading"),
              width: 125,
              height: 85,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- STE Test result ≤ 6dbm"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "fiber_patch_panel_faulty_2",
                initialValue: data.json["fiber_patch_panel_faulty_2"] != null
                    ? data.json["fiber_patch_panel_faulty_2"]
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
                name: "fiber_patch_panel_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["fiber_patch_panel_remarks_2"] != null
                    ? data.json["fiber_patch_panel_remarks_2"]
                    : 'Indicate Value for FOCA1 S1/S2:\nFOCA2 S1/S2:',
                decoration: InputDecoration(
                  labelText: 'FPP (b)',
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
              child: Text(
                "Indicate Value for FOCA1 S1/S2:\nFOCA2 S1/S2:",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              width: 175,
              height: 64,
              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
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
              child: Text("- No damage"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "FOCA_drum_faulty_1",
                initialValue: data.json["FOCA_drum_faulty_1"] != null
                    ? data.json["FOCA_drum_faulty_1"]
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
                name: "FOCA_drum_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["FOCA_drum_remarks_1"] != null
                    ? data.json["FOCA_drum_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'FOCA drum (a)',
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
                name: "FOCA_drum_missing_1",
                initialValue: data.json["FOCA_drum_missing_1"] != null
                    ? data.json["FOCA_drum_missing_1"]
                    : false,
                title: Text(
                  "1 / 2 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 144,
              height: 54,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text(
                  "b. Connect one end of the FOCA drum to SEP and the other to FOCA loopback. Check the losses reading."),
              width: 125,
              height: 104,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- STE result ≤ 11.5dbm"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "FOCA_drum_faulty_2",
                initialValue: data.json["FOCA_drum_faulty_2"] != null
                    ? data.json["FOCA_drum_faulty_2"]
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
                name: "FOCA_drum_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["FOCA_drum_remarks_2"] != null
                    ? data.json["FOCA_drum_remarks_2"]
                    : 'Indicate drum values,\n Left S1/S2:\nLeft S3/S4:\nRight S1/S2:\nRight S3/S4:',
                decoration: InputDecoration(
                  labelText: 'Foca Drum (b)',
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
              child: Text(
                "Indicate drum values,\n Left S1/S2:\nLeft S3/S4:\nRight S1/S2:\nRight S3/S4:",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              width: 175,
              height: 96,
              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("c. Next PM due date."),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderDateTimePicker(
                    name: "FOCA_drum_left_due_date",
                    initialValue: data.json["FOCA_drum_left_due_date"] != null
                        ? DateFormat("yyyy-MM-dd hh:mm:ss")
                            .parse(data.json["FOCA_drum_left_due_date"])
                        : DateTime.now(),
                    decoration: InputDecoration(
                      labelText: 'Left Due Date:',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderDateTimePicker(
                    name: "FOCA_drum_right_due_date",
                    initialValue: data.json["FOCA_drum_right_due_date"] != null
                        ? DateFormat("yyyy-MM-dd hh:mm:ss")
                            .parse(data.json["FOCA_drum_right_due_date"])
                        : DateTime.now(),
                    decoration: InputDecoration(
                      labelText: 'Right Due Date:',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 128,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "FOCA_drum_faulty_3",
                initialValue: data.json["FOCA_drum_faulty_3"] != null
                    ? data.json["FOCA_drum_faulty_3"]
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
                name: "FOCA_drum_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["FOCA_drum_remarks_3"] != null
                    ? data.json["FOCA_drum_remarks_3"]
                    : 'Serial number,\n Left:\nRight:',
                decoration: InputDecoration(
                  labelText: 'Foca Drum (c)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // initialValue: '',
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                "Serial number:\n Left:\nRight:",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              width: 175,
              height: 64,
              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text(
                  "a. Check for physical condition, loose bolts, nuts and wiring connection"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- All cables are connected according to the labels"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "gateway_patch_panel_1_faulty_1",
                initialValue:
                    data.json["gateway_patch_panel_1_faulty_1"] != null
                        ? data.json["gateway_patch_panel_1_faulty_1"]
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
                name: "gateway_patch_panel_1_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["gateway_patch_panel_1_remarks_1"] != null
                        ? data.json["gateway_patch_panel_1_remarks_1"]
                        : '',
                decoration: InputDecoration(
                  labelText: 'Gateway Patch Panel 1 (a)',
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
                name: "gateway_patch_panel_1_missing_1",
                initialValue:
                    data.json["gateway_patch_panel_1_missing_1"] != null
                        ? data.json["gateway_patch_panel_1_missing_1"]
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
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("b. Check D-SUB 9 connection (VGA look alike)"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "- Properly connected and secured. Connected correctly based on label"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "gateway_patch_panel_1_faulty_2",
                initialValue:
                    data.json["gateway_patch_panel_1_faulty_2"] != null
                        ? data.json["gateway_patch_panel_1_faulty_2"]
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
                name: "gateway_patch_panel_1_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["gateway_patch_panel_1_remarks_2"] != null
                        ? data.json["gateway_patch_panel_1_remarks_2"]
                        : '',
                decoration: InputDecoration(
                  labelText: 'Gateway Patch Panel 1 (b)',
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
              child: Text(
                  "a. Check for physical condition, loose bolts, nuts and wiring connection"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- All cables are connected according to the labels"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "gateway_patch_panel_2_faulty_1",
                initialValue:
                    data.json["gateway_patch_panel_2_faulty_1"] != null
                        ? data.json["gateway_patch_panel_2_faulty_1"]
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
                name: "gateway_patch_panel_2_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["gateway_patch_panel_2_remarks_1"] != null
                        ? data.json["gateway_patch_panel_2_remarks_1"]
                        : '',
                decoration: InputDecoration(
                  labelText: 'Gateway Patch Panel 2 (a)',
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
                name: "gateway_patch_panel_2_missing_1",
                initialValue:
                    data.json["gateway_patch_panel_2_missing_1"] != null
                        ? data.json["gateway_patch_panel_2_missing_1"]
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
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("b. Check D-SUB 9 connection (VGA look alike)"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "- Properly connected and secured. Connected correctly based on label"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "gateway_patch_panel_2_faulty_2",
                initialValue:
                    data.json["gateway_patch_panel_2_faulty_2"] != null
                        ? data.json["gateway_patch_panel_2_faulty_2"]
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
                name: "gateway_patch_panel_2_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["gateway_patch_panel_2_remarks_2"] != null
                        ? data.json["gateway_patch_panel_2_remarks_2"]
                        : '',
                decoration: InputDecoration(
                  labelText: 'Gateway Patch Panel 2 (b)',
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
              child: Text("a. Check physical connection"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- No damage on connector"),
                  Text("- No exposed cable             "),
                ],
              ),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "RF_jumper_cable_5_BNC_N_faulty_1",
                initialValue:
                    data.json["RF_jumper_cable_5_BNC_N_faulty_1"] != null
                        ? data.json["RF_jumper_cable_5_BNC_N_faulty_1"]
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
                name: "RF_jumper_cable_5_BNC_N_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["RF_jumper_cable_5_BNC_N_remarks_1"] != null
                        ? data.json["RF_jumper_cable_5_BNC_N_remarks_1"]
                        : '',
                decoration: InputDecoration(
                  labelText: '0.5 RF (a)',
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
                name: "RF_jumper_cable_5_BNC_N_missing_1",
                initialValue:
                    data.json["RF_jumper_cable_5_BNC_N_missing_1"] != null
                        ? data.json["RF_jumper_cable_5_BNC_N_missing_1"]
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
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("b. Check connectivity"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- Use multimeter to check resistance ≤ 1Ω"),
                  Text("- Ground to Signal not shorted"),
                ],
              ),
              width: 175,
              height: 72,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "RF_jumper_cable_5_BNC_N_faulty_2",
                initialValue:
                    data.json["RF_jumper_cable_5_BNC_N_faulty_2"] != null
                        ? data.json["RF_jumper_cable_5_BNC_N_faulty_2"]
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
                name: "RF_jumper_cable_5_BNC_N_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["RF_jumper_cable_5_BNC_N_remarks_2"] != null
                        ? data.json["RF_jumper_cable_5_BNC_N_remarks_2"]
                        : '',
                decoration: InputDecoration(
                  labelText: '0.5 RF (b)',
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
      ],
    ),
  );
}
