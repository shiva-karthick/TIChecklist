import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';

Widget generateRightHandSideColumnRowVHF(
    BuildContext context, int index, Post data) {
  double remarksWidth = 172;
  double remarksHeight = 136;

  return InteractiveViewer(
    child: Column(
      children: [
        Row(
          children: <Widget>[
            Container(
              child: Text(
                  "a. Check for physical condition, loose strap & wiring condition"),
              width: 125,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    name: 'vrc_946_1_serial_number',
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946_1_serial_number"] != null
                        ? data.json["vrc_946_1_serial_number"]
                        : "",
                    decoration: InputDecoration(
                      hintText: 'A123456BC',
                      labelText: 'Serial No:',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text("> Data - RGW Patch Panel P1"),
                ],
              ),
              width: 175,
              height: 120,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_1_faulty_1",
                initialValue: data.json["vrc_946_1_faulty_1"] != null
                    ? data.json["vrc_946_1_faulty_1"]
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
                name: "vrc_946_1_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_1_remarks_1"] != null
                    ? data.json["vrc_946_1_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946 1 (a)',
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
                name: "vrc_946_1_missing",
                initialValue: data.json["vrc_946_1_missing"] != null
                    ? data.json["vrc_946_1_missing"]
                    : false,
                title: Text(
                  "1 set",
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
              child: Text("b. Accounting"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  '- Handset, loudspeaker, power cable, RF Jumper, Dog-Bone (CG-409 RF cable), MX6808A, Mounting Plate'),
              width: 175,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_1_faulty_2",
                initialValue: data.json["vrc_946_1_faulty_2"] != null
                    ? data.json["vrc_946_1_faulty_2"]
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
                name: "vrc_946_1_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_1_remarks_2"] != null
                    ? data.json["vrc_946_1_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946 1 (b)',
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
              child: Text("c. PTT and Loud speaker"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- PTT on handset for side tone test"),
                  Text("- Loudspeaker for side tone test   "),
                ],
              ),
              width: 175,
              height: 70,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_1_faulty_3",
                initialValue: data.json["vrc_946_1_faulty_3"] != null
                    ? data.json["vrc_946_1_faulty_3"]
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
                name: "vrc_946_1_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_1_remarks_3"] != null
                    ? data.json["vrc_946_1_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946 1 (c)',
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
              child: Text("d. BITE test"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  Text('- RX Test                                   '),
                  Text('- TX test with PTT on handset'),
                ],
              ),
              width: 175,
              height: 54,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_1_faulty_4",
                initialValue: data.json["vrc_946_1_faulty_4"] != null
                    ? data.json["vrc_946_1_faulty_4"]
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
                name: "vrc_946_1_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_1_remarks_4"] != null
                    ? data.json["vrc_946_1_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946 1 (d)',
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
              child: Text("e. Transmission Output Power"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "- Connect 2.5m RF cable (BNC to N-type) from VA 7377 RF connector to wattmeter"),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderTextField(
                    name: "vrc_946_1_output_power",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946_1_output_power"] != null
                        ? data.json["vrc_946_1_output_power"]
                        : '',
                    decoration: InputDecoration(
                      labelText: 'Transmission Output Power',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 140,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_1_faulty_5",
                initialValue: data.json["vrc_946_1_faulty_5"] != null
                    ? data.json["vrc_946_1_faulty_5"]
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
                name: "vrc_946_1_remarks_5",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_1_remarks_5"] != null
                    ? data.json["vrc_946_1_remarks_5"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946 1 (e)',
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
                "Get the value range from SM TCS, for us to determine P/F",
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
                  "a. Check for physical condition, loose strap & wiring condition"),
              width: 125,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    name: 'vrc_946_2_serial_number',
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946_2_serial_number"] != null
                        ? data.json["vrc_946_2_serial_number"]
                        : '',
                    decoration: InputDecoration(
                      hintText: 'A123456BC',
                      labelText: 'Serial No:',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text("> Data - RGW Patch Panel P2"),
                ],
              ),
              width: 175,
              height: 120,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_2_faulty_1",
                initialValue: data.json["vrc_946_2_faulty_1"] != null
                    ? data.json["vrc_946_2_faulty_1"]
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
                name: "vrc_946_2_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_2_remarks_1"] != null
                    ? data.json["vrc_946_2_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946 2 (a)',
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
                name: "vrc_946_2_missing",
                initialValue: data.json["vrc_946_2_missing"] != null
                    ? data.json["vrc_946_2_missing"]
                    : false,
                title: Text(
                  "1 set",
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
              child: Text("b. Accounting"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  '- Handset, loudspeaker, power cable, RF Jumper, Dog-Bone (CG-409 RF cable), MX6808A, Mounting Plate'),
              width: 175,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_2_faulty_2",
                initialValue: data.json["vrc_946_2_faulty_2"] != null
                    ? data.json["vrc_946_2_faulty_2"]
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
                name: "vrc_946_2_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_2_remarks_2"] != null
                    ? data.json["vrc_946_2_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946 2 (b)',
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
              child: Text("c. PTT and Loud speaker"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- PTT on handset for side tone test"),
                  Text("- Loudspeaker for side tone test   "),
                ],
              ),
              width: 175,
              height: 70,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_2_faulty_3",
                initialValue: data.json["vrc_946_2_faulty_3"] != null
                    ? data.json["vrc_946_2_faulty_3"]
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
                name: "vrc_946_2_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_2_remarks_3"] != null
                    ? data.json["vrc_946_2_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946 2 (c)',
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
              child: Text("d. BITE test"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  Text('- RX Test                                   '),
                  Text('- TX test with PTT on handset'),
                ],
              ),
              width: 175,
              height: 54,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_2_faulty_4",
                initialValue: data.json["vrc_946_2_faulty_4"] != null
                    ? data.json["vrc_946_2_faulty_4"]
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
                name: "vrc_946_2_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_2_remarks_4"] != null
                    ? data.json["vrc_946_2_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946 2 (d)',
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
              child: Text("e. Transmission Output Power"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "- Connect 2.5m RF cable (BNC to N-type) from VA 7377 RF connector to wattmeter"),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderTextField(
                    name: "vrc_946_2_output_power",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946_2_output_power"] != null
                        ? data.json["vrc_946_2_output_power"]
                        : '',
                    decoration: InputDecoration(
                      labelText: 'transmission Output Power',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 144,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_2_faulty_5",
                initialValue: data.json["vrc_946_2_faulty_5"] != null
                    ? data.json["vrc_946_2_faulty_5"]
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
                name: "vrc_946_2_remarks_5",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_2_remarks_5"] != null
                    ? data.json["vrc_946_2_remarks_5"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946 2 (e)',
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
                "Get the value range from SM TCS, for us to determine P/F",
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
                  "a. Check for physical condition, loose strap & wiring condition"),
              width: 125,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    name: 'vrc_946_3_serial_number',
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946_3_serial_number"] != null
                        ? data.json["vrc_946_3_serial_number"]
                        : '',
                    decoration: InputDecoration(
                      hintText: 'A123456BC',
                      labelText: 'Serial No:',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text("> Data - RGW Patch Panel P3"),
                ],
              ),
              width: 175,
              height: 120,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_3_faulty_1",
                initialValue: data.json["vrc_946_3_faulty_1"] != null
                    ? data.json["vrc_946_3_faulty_1"]
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
                name: "vrc_946_3_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_3_remarks_1"] != null
                    ? data.json["vrc_946_3_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946 3 (a)',
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
                name: "vrc_946_3_missing",
                initialValue: data.json["vrc_946_3_missing"] != null
                    ? data.json["vrc_946_3_missing"]
                    : false,
                title: Text(
                  "1 set",
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
              child: Text("b. Accounting"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  '- Handset, loudspeaker, power cable, RF Jumper, Dog-Bone (CG-409 RF cable), MX6808A, Mounting Plate'),
              width: 175,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_3_faulty_2",
                initialValue: data.json["vrc_946_3_faulty_2"] != null
                    ? data.json["vrc_946_3_faulty_2"]
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
                name: "vrc_946_3_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_3_remarks_2"] != null
                    ? data.json["vrc_946_3_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946 3 (b)',
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
              child: Text("c. PTT and Loud speaker"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- PTT on handset for side tone test"),
                  Text("- Loudspeaker for side tone test   "),
                ],
              ),
              width: 175,
              height: 70,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_3_faulty_3",
                initialValue: data.json["vrc_946_3_faulty_3"] != null
                    ? data.json["vrc_946_3_faulty_3"]
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
                name: "vrc_946_3_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_3_remarks_3"] != null
                    ? data.json["vrc_946_3_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946 3 (c)',
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
              child: Text("d. BITE test"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  Text('- RX Test                                   '),
                  Text('- TX test with PTT on handset'),
                ],
              ),
              width: 175,
              height: 54,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_3_faulty_4",
                initialValue: data.json["vrc_946_3_faulty_4"] != null
                    ? data.json["vrc_946_3_faulty_4"]
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
                name: "vrc_946_3_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_3_remarks_4"] != null
                    ? data.json["vrc_946_3_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946 3 (d)',
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
              child: Text("e. Transmission Output Power"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "- Connect 2.5m RF cable (BNC to N-type) from VA 7377 RF connector to wattmeter"),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderTextField(
                    name: "vrc_946_3_output_power",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946_3_output_power"] != null
                        ? data.json["vrc_946_3_output_power"]
                        : '',
                    decoration: InputDecoration(
                      labelText: 'Transmission Output Power',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 144,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946_3_faulty_5",
                initialValue: data.json["vrc_946_3_faulty_5"] != null
                    ? data.json["vrc_946_3_faulty_5"]
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
                name: "vrc_946_3_remarks_5",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946_3_remarks_5"] != null
                    ? data.json["vrc_946_3_remarks_5"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946 3 (e)',
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
                "Get the value range from SM TCS, for us to determine P/F",
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
                  "a. Check for physical condition, loose strap & wiring condition"),
              width: 125,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    name: 'vrc_946A_1_serial_number',
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946A_1_serial_number"] != null
                        ? data.json["vrc_946A_1_serial_number"]
                        : '',
                    decoration: InputDecoration(
                      hintText: 'A123456BC',
                      labelText: 'Serial No:',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text("> Data - RGW Patch Panel P4"),
                ],
              ),
              width: 175,
              height: 120,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_1_faulty_1",
                initialValue: data.json["vrc_946A_1_faulty_1"] != null
                    ? data.json["vrc_946A_1_faulty_1"]
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
                name: "vrc_946A_1_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_1_remarks_1"] != null
                    ? data.json["vrc_946A_1_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946A 1 (a)',
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
                name: "vrc_946A_1_missing",
                initialValue: data.json["vrc_946A_1_missing"] != null
                    ? data.json["vrc_946A_1_missing"]
                    : false,
                title: Text(
                  "1 set",
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
              child: Text("b. Accounting"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  '- Handset, loudspeaker, power cable, RF Jumper, Dog-Bone (CG-1127 RF cable), MX6808A, Mounting Plate'),
              width: 175,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_1_faulty_2",
                initialValue: data.json["vrc_946A_1_faulty_2"] != null
                    ? data.json["vrc_946A_1_faulty_2"]
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
                name: "vrc_946A_1_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_1_remarks_2"] != null
                    ? data.json["vrc_946A_1_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946A 1 (b)',
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
              child: Text("c. PTT and Loud speaker"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- PTT on handset for side tone test"),
                  Text("- Loudspeaker for side tone test   "),
                ],
              ),
              width: 175,
              height: 70,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_1_faulty_3",
                initialValue: data.json["vrc_946A_1_faulty_3"] != null
                    ? data.json["vrc_946A_1_faulty_3"]
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
                name: "vrc_946A_1_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_1_remarks_3"] != null
                    ? data.json["vrc_946A_1_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946A 1 (c)',
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
              child: Text("d. BITE test"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  Text('- RX Test'),
                  Text('- TX test'),
                ],
              ),
              width: 175,
              height: 54,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_1_faulty_4",
                initialValue: data.json["vrc_946A_1_faulty_4"] != null
                    ? data.json["vrc_946A_1_faulty_4"]
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
                name: "vrc_946A_1_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_1_remarks_4"] != null
                    ? data.json["vrc_946A_1_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946A 1 (d)',
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
              child: Text("e. Transmission Output Power"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "- Connect 2.5m RF cable (BNC to N-type) from VA 9002/2 RF connector to wattmeter"),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderTextField(
                    name: "vrc_946A_1_output_power",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946A_1_output_power"] != null
                        ? data.json["vrc_946A_1_output_power"]
                        : '',
                    decoration: InputDecoration(
                      labelText: 'Transmission Output Power',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 144,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_1_faulty_5",
                initialValue: data.json["vrc_946A_1_faulty_5"] != null
                    ? data.json["vrc_946A_1_faulty_5"]
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
                name: "vrc_946A_1_remarks_5",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_1_remarks_5"] != null
                    ? data.json["vrc_946A_1_remarks_5"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946A 1 (e)',
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
                "Get the value range from SM TCS, for us to determine P/F",
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
                  "a. Check for physical condition, loose strap & wiring condition"),
              width: 125,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    name: 'vrc_946A_2_serial_number',
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946A_2_serial_number"] != null
                        ? data.json["vrc_946A_2_serial_number"]
                        : '',
                    decoration: InputDecoration(
                      hintText: 'A123456BC',
                      labelText: 'Serial No:',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text("> Data - RGW Patch Panel P5"),
                ],
              ),
              width: 175,
              height: 120,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_2_faulty_1",
                initialValue: data.json["vrc_946A_2_faulty_1"] != null
                    ? data.json["vrc_946A_2_faulty_1"]
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
                name: "vrc_946A_2_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_2_remarks_1"] != null
                    ? data.json["vrc_946A_2_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946A 2 (a)',
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
                name: "vrc_946A_2_missing",
                initialValue: data.json["vrc_946A_2_missing"] != null
                    ? data.json["vrc_946A_2_missing"]
                    : false,
                title: Text(
                  "1 set",
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
              child: Text("b. Accounting"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  '- Handset, loudspeaker, power cable, RF Jumper, Dog-Bone (CG-1127 RF cable), MX6808A, Mounting Plate'),
              width: 175,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_2_faulty_2",
                initialValue: data.json["vrc_946A_2_faulty_2"] != null
                    ? data.json["vrc_946A_2_faulty_2"]
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
                name: "vrc_946A_2_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_2_remarks_2"] != null
                    ? data.json["vrc_946A_2_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946A 2 (b)',
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
              child: Text("c. PTT and Loud speaker"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- PTT on handset for side tone test"),
                  Text("- Loudspeaker for side tone test   "),
                ],
              ),
              width: 175,
              height: 70,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_2_faulty_3",
                initialValue: data.json["vrc_946A_2_faulty_3"] != null
                    ? data.json["vrc_946A_2_faulty_3"]
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
                name: "vrc_946A_2_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_2_remarks_3"] != null
                    ? data.json["vrc_946A_2_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946A 2 (c)',
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
              child: Text("d. BITE test"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  Text('- RX Test'),
                  Text('- TX test'),
                ],
              ),
              width: 175,
              height: 54,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_2_faulty_4",
                initialValue: data.json["vrc_946A_2_faulty_4"] != null
                    ? data.json["vrc_946A_2_faulty_4"]
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
                name: "vrc_946A_2_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_2_remarks_4"] != null
                    ? data.json["vrc_946A_2_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946A 2 (d)',
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
              child: Text("e. Transmission Output Power"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "- Connect 2.5m RF cable (BNC to N-type) from VA 9002/2 RF connector to wattmeter"),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderTextField(
                    name: "vrc_946A_2_output_power",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946A_2_output_power"] != null
                        ? data.json["vrc_946A_2_output_power"]
                        : '',
                    decoration: InputDecoration(
                      labelText: 'Transmission Output Power',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 144,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_2_faulty_5",
                initialValue: data.json["vrc_946A_2_faulty_5"] != null
                    ? data.json["vrc_946A_2_faulty_5"]
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
                name: "vrc_946A_2_remarks_5",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_2_remarks_5"] != null
                    ? data.json["vrc_946A_2_remarks_5"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946A 2 (e)',
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
                "Get the value range from SM TCS, for us to determine P/F",
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
                  "a. Check for physical condition, loose strap & wiring condition"),
              width: 125,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    name: 'vrc_946A_3_serial_number',
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946A_3_serial_number"] != null
                        ? data.json["vrc_946A_3_serial_number"]
                        : '',
                    decoration: InputDecoration(
                      hintText: 'A123456BC',
                      labelText: 'Serial No:',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text("> Data - RGW Patch Panel P6"),
                ],
              ),
              width: 175,
              height: 120,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_3_faulty_1",
                initialValue: data.json["vrc_946A_3_faulty_1"] != null
                    ? data.json["vrc_946A_3_faulty_1"]
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
                name: "vrc_946A_3_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_3_remarks_1"] != null
                    ? data.json["vrc_946A_3_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946A 3 (a)',
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
                name: "vrc_946A_3_missing",
                initialValue: data.json["vrc_946A_3_missing"] != null
                    ? data.json["vrc_946A_3_missing"]
                    : false,
                title: Text(
                  "1 set",
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
              child: Text("b. Accounting"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  '- Handset, loudspeaker, power cable, RF Jumper, Dog-Bone (CG-1127 RF cable), MX6808A, Mounting Plate'),
              width: 175,
              height: 88,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_3_faulty_2",
                initialValue: data.json["vrc_946A_3_faulty_2"] != null
                    ? data.json["vrc_946A_3_faulty_2"]
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
                name: "vrc_946A_3_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_3_remarks_2"] != null
                    ? data.json["vrc_946A_3_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946A 3 (b)',
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
              child: Text("c. PTT and Loud speaker"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- PTT on handset for side tone test"),
                  Text("- Loudspeaker for side tone test   "),
                ],
              ),
              width: 175,
              height: 70,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_3_faulty_3",
                initialValue: data.json["vrc_946A_3_faulty_3"] != null
                    ? data.json["vrc_946A_3_faulty_3"]
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
                name: "vrc_946A_3_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_3_remarks_3"] != null
                    ? data.json["vrc_946A_3_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC946A 3 (c)',
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
              child: Text("d. BITE test"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  Text('- RX Test'),
                  Text('- TX test'),
                ],
              ),
              width: 175,
              height: 54,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_3_faulty_4",
                initialValue: data.json["vrc_946A_3_faulty_4"] != null
                    ? data.json["vrc_946A_3_faulty_4"]
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
                name: "vrc_946A_3_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_3_remarks_4"] != null
                    ? data.json["vrc_946A_3_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRC 946A 3 (d)',
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
              child: Text("e. Transmission Output Power"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "- Connect 2.5m RF cable (BNC to N-type) from VA 9002/2 RF connector to wattmeter"),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderTextField(
                    name: "vrc_946A_3_output_power",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vrc_946A_3_output_power"] != null
                        ? data.json["vrc_946A_3_output_power"]
                        : '',
                    decoration: InputDecoration(
                      labelText: 'Transmission Output Power',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 144,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vrc_946A_3_faulty_5",
                initialValue: data.json["vrc_946A_3_faulty_5"] != null
                    ? data.json["vrc_946A_3_faulty_5"]
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
                name: "vrc_946A_3_remarks_5",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vrc_946A_3_remarks_5"] != null
                    ? data.json["vrc_946A_3_remarks_5"]
                    : '',
                // initialValue:
                // 'Get the value range from SM TCS, for us to determine PF',
                decoration: InputDecoration(
                  labelText: 'VRC 946A 3 (e)',
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
                "Get the value range from SM TCS, for us to determine P/F",
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
      ],
    ),
  );
}
