import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';

Widget generateRightHandSideColumnRowMiscPart2(
    BuildContext context, int index, Post data) {
  double remarksWidth = 172;
  double remarksHeight = 136;

  return InteractiveViewer(
    child: Column(
      children: [
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
                name: "RF_jumper_cable_25_BNC_N_faulty_1",
                initialValue:
                    data.json["RF_jumper_cable_25_BNC_N_faulty_1"] != null
                        ? data.json["RF_jumper_cable_25_BNC_N_faulty_1"]
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
                name: "RF_jumper_cable_25_BNC_N_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["RF_jumper_cable_25_BNC_N_remarks_1"] != null
                        ? data.json["RF_jumper_cable_25_BNC_N_remarks_1"]
                        : '',
                decoration: InputDecoration(
                  labelText: '2.5m (BNC-N type) (a)',
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
                name: "RF_jumper_cable_25_BNC_N_missing_1",
                initialValue:
                    data.json["RF_jumper_cable_25_BNC_N_missing_1"] != null
                        ? data.json["RF_jumper_cable_25_BNC_N_missing_1"]
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
                name: "RF_jumper_cable_25_BNC_N_faulty_2",
                initialValue:
                    data.json["RF_jumper_cable_25_BNC_N_faulty_2"] != null
                        ? data.json["RF_jumper_cable_25_BNC_N_faulty_2"]
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
                name: "RF_jumper_cable_25_BNC_N_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["RF_jumper_cable_25_BNC_N_remarks_2"] != null
                        ? data.json["RF_jumper_cable_25_BNC_N_remarks_2"]
                        : '',
                decoration: InputDecoration(
                  labelText: '2.5m (BNC-N type) (b)',
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
                name: "RF_jumper_cable_25_N_N_faulty_1",
                initialValue:
                    data.json["RF_jumper_cable_25_N_N_faulty_1"] != null
                        ? data.json["RF_jumper_cable_25_N_N_faulty_1"]
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
                name: "RF_jumper_cable_25_N_N_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["RF_jumper_cable_25_N_N_remarks_1"] != null
                        ? data.json["RF_jumper_cable_25_N_N_remarks_1"]
                        : '',
                decoration: InputDecoration(
                  labelText: '2.5m (N-N type) (a)',
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
                name: "RF_jumper_cable_25_N_N_missing_1",
                initialValue:
                    data.json["RF_jumper_cable_25_N_N_missing_1"] != null
                        ? data.json["RF_jumper_cable_25_N_N_missing_1"]
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
                name: "RF_jumper_cable_25_N_N_faulty_2",
                initialValue:
                    data.json["RF_jumper_cable_25_N_N_faulty_2"] != null
                        ? data.json["RF_jumper_cable_25_N_N_faulty_2"]
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
                name: "RF_jumper_cable_25_N_N_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue:
                    data.json["RF_jumper_cable_25_N_N_remarks_2"] != null
                        ? data.json["RF_jumper_cable_25_N_N_remarks_2"]
                        : '',
                decoration: InputDecoration(
                  labelText: '2.5m (N-N type) (b)',
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
                name: "RF_cable_drum_15_faulty_1",
                initialValue: data.json["RF_cable_drum_15_faulty_1"] != null
                    ? data.json["RF_cable_drum_15_faulty_1"]
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
                name: "RF_cable_drum_15_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["RF_cable_drum_15_remarks_1"] != null
                    ? data.json["RF_cable_drum_15_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RF drum 15m (a)',
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
                name: "RF_cable_drum_15_missing_1",
                initialValue: data.json["RF_cable_drum_15_missing_1"] != null
                    ? data.json["RF_cable_drum_15_missing_1"]
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
                name: "RF_cable_drum_15_faulty_2",
                initialValue: data.json["RF_cable_drum_15_faulty_2"] != null
                    ? data.json["RF_cable_drum_15_faulty_2"]
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
                name: "RF_cable_drum_15_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["RF_cable_drum_15_remarks_2"] != null
                    ? data.json["RF_cable_drum_15_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RF drum 15m (b)',
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
              child: Text("- No damage"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "chairs_faulty",
                initialValue: data.json["chairs_faulty"] != null
                    ? data.json["chairs_faulty"]
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
                name: "chairs_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["chairs_remarks"] != null
                    ? data.json["chairs_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Chairs',
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
                name: "chairs_missing",
                initialValue: data.json["chairs_missing"] != null
                    ? data.json["chairs_missing"]
                    : false,
                title: Text(
                  "2 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 54,
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
              height: 104,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- No damage and safety pin in secured place"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "fire_extinguisher_faulty_1",
                initialValue: data.json["fire_extinguisher_faulty_1"] != null
                    ? data.json["fire_extinguisher_faulty_1"]
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
                name: "fire_extinguisher_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["fire_extinguisher_remarks_1"] != null
                    ? data.json["fire_extinguisher_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Fire Extinguisher (a)',
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
                name: "fire_extinguisher_missing_1",
                initialValue: data.json["fire_extinguisher_missing_1"] != null
                    ? data.json["fire_extinguisher_missing_1"]
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
              child: Text("b. Check pressure indicator"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Indicator in green zone"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "fire_extinguisher_faulty_2",
                initialValue: data.json["fire_extinguisher_faulty_2"] != null
                    ? data.json["fire_extinguisher_faulty_2"]
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
                name: "fire_extinguisher_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["fire_extinguisher_remarks_2"] != null
                    ? data.json["fire_extinguisher_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Fire Extinguisher (b)',
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
              child: Text("c. Next PM due date"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderDateTimePicker(
                name: "fire_extinguisher_due_date",
                initialValue: data.json["fire_extinguisher_due_date"] != null
                    ? DateFormat("yyyy-MM-dd hh:mm:ss")
                        .parse(data.json["fire_extinguisher_due_date"])
                    : DateTime.now(),
                decoration: InputDecoration(
                  labelText: 'Due Date:',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "fire_extinguisher_faulty_3",
                initialValue: data.json["fire_extinguisher_faulty_3"] != null
                    ? data.json["fire_extinguisher_faulty_3"]
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
                name: "fire_extinguisher_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["fire_extinguisher_remarks_3"] != null
                    ? data.json["fire_extinguisher_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Fire Extinguisher (c)',
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
              height: 80,
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
                name: "antenna_base_faulty_1",
                initialValue: data.json["antenna_base_faulty_1"] != null
                    ? data.json["antenna_base_faulty_1"]
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
                name: "antenna_base_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["antenna_base_remarks_1"] != null
                    ? data.json["antenna_base_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Antenna Base (a)',
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
                name: "antenna_base_missing_1",
                initialValue: data.json["antenna_base_missing_1"] != null
                    ? data.json["antenna_base_missing_1"]
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
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("b. Connectivity check"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "- Ensure top center metal piece is shorted to the connector signal pin"),
                  Text(
                      '- Ensure the surrounding top metal piece is shorted to the connector grounding'),
                  Text(
                      '- Ensure connector signal pin is not shorted to the grounding'),
                ],
              ),
              width: 175,
              height: 144,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "antenna_base_faulty_2",
                initialValue: data.json["antenna_base_faulty_2"] != null
                    ? data.json["antenna_base_faulty_2"]
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
                name: "antenna_base_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["antenna_base_remarks_2"] != null
                    ? data.json["antenna_base_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Antenna Base (b)',
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
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- No damage to both horse shoes pin"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "lower_whip_section_faulty_1",
                initialValue: data.json["lower_whip_section_faulty_1"] != null
                    ? data.json["lower_whip_section_faulty_1"]
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
                name: "lower_whip_section_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["lower_whip_section_remarks_1"] != null
                    ? data.json["lower_whip_section_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Lower Whip (a)',
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
                name: "lower_whip_section_missing_1",
                initialValue: data.json["lower_whip_section_missing_1"] != null
                    ? data.json["lower_whip_section_missing_1"]
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
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("b. Connectivity check"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  '- Ensure horse shoes pin is not shorted to surrounding grounding plate'),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "lower_whip_section_faulty_2",
                initialValue: data.json["lower_whip_section_faulty_2"] != null
                    ? data.json["lower_whip_section_faulty_2"]
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
                name: "lower_whip_section_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["lower_whip_section_remarks_2"] != null
                    ? data.json["lower_whip_section_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Lower Whip (b)',
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
              child: Text('- No damage'),
              width: 175,
              height: 72,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "antenna_head_faulty_1",
                initialValue: data.json["antenna_head_faulty_1"] != null
                    ? data.json["antenna_head_faulty_1"]
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
                name: "antenna_head_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["antenna_head_remarks_1"] != null
                    ? data.json["antenna_head_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Antenna Head',
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
                name: "antenna_head_missing_1",
                initialValue: data.json["antenna_head_missing_1"] != null
                    ? data.json["antenna_head_missing_1"]
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
      ],
    ),
  );
}
