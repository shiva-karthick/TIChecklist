import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';

Widget generateRightHandSideColumnRowElectricalSystem(
    BuildContext context, int index, Post data) {
  double remarksWidth = 168;
  double remarksHeight = 96;

  return InteractiveViewer(
    child: Column(
      children: [
        Row(
          children: <Widget>[
            Container(
              child: Text("a. Check all items accounted"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("-Spanner, Earth cable, Rod, Hammer/Mallet and bag"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "grounding_kit_faulty_1",
                initialValue: data.json["grounding_kit_faulty_1"] != null
                    ? data.json["grounding_kit_faulty_1"]
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
                name: "grounding_kit_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["grounding_kit_remarks_1"] != null
                    ? data.json["grounding_kit_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Grounding Kit (a)',
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
                name: "grounding_kit_missing_1",
                initialValue: data.json["grounding_kit_missing_1"] != null
                    ? data.json["grounding_kit_missing_1"]
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
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("b. Perform visual check"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "-Physical damage of the rod and cable due to dust, wear and tear"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "grounding_kit_faulty_2",
                initialValue: data.json["grounding_kit_faulty_2"] != null
                    ? data.json["grounding_kit_faulty_2"]
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
                name: "grounding_kit_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["grounding_kit_remarks_2"] != null
                    ? data.json["grounding_kit_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Grounding Kit (b)',
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
                  "a. Check for physical condition, loose bolts, nuts & wiring connection"),
              width: 125,
              height: 85,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("-No damage, no leak and no corrosion/rust"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "battery_faulty_1",
                initialValue: data.json["battery_faulty_1"] != null
                    ? data.json["battery_faulty_1"]
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
                name: "battery_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["battery_remarks_1"] != null
                    ? data.json["battery_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Battery (a)',
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
                name: "battery_missing_1",
                initialValue: data.json["battery_missing_1"] != null
                    ? data.json["battery_missing_1"]
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
              child: Text("b. Check battery voltage"),
              width: 125,
              height: 85,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "- ON PDB, switch OFF both Gen and switch ON battery only. Check for ≥ 24V"),
              width: 175,
              height: 64,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.center,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "battery_faulty_2",
                initialValue: data.json["battery_faulty_2"] != null
                    ? data.json["battery_faulty_2"]
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
                name: "battery_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["battery_remarks_2"] != null
                    ? data.json["battery_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Battery (b)',
                  hintText: 'Indicate Value :',
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
                "Indicate battery voltage in the remarks section",
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
              child: Text("c. Next Replacement Date"),
              width: 125,
              height: 85,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderDateTimePicker(
                name: "battery_replacement_date",
                initialValue: data.json["battery_replacement_date"] != null
                    ? DateFormat("yyyy-MM-dd hh:mm:ss")
                        .parse(data.json["battery_replacement_date"])
                    : DateTime.now(),
                decoration: InputDecoration(
                  labelText: 'Replacement Date :',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: 175,
              height: 130,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "battery_faulty_3",
                initialValue: data.json["battery_faulty_3"] != null
                    ? data.json["battery_faulty_3"]
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
                name: "battery_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["battery_remarks_3"] != null
                    ? data.json["battery_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Battery (c)',
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
                  "a. Check for physical condition, loose bolts, nuts & wiring connection"),
              width: 125,
              height: 85,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- No damage                      "),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderTextField(
                    name: "left_generator_serial_number",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue:
                        data.json["left_generator_serial_number"] != null
                            ? data.json["left_generator_serial_number"]
                            : '',
                    decoration: InputDecoration(
                      labelText: 'Left S/N : ',
                      hintText: 'Serial Number ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderTextField(
                    name: "right_generator_serial_number",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue:
                        data.json["right_generator_serial_number"] != null
                            ? data.json["right_generator_serial_number"]
                            : '',
                    decoration: InputDecoration(
                      labelText: 'Right S/N : ',
                      hintText: 'Serial Number ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 160,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_1",
                initialValue: data.json["generator_faulty_1"] != null
                    ? data.json["generator_faulty_1"]
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
                name: "generator_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_1"] != null
                    ? data.json["generator_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (a)',
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
                name: "generator_missing_1",
                initialValue: data.json["generator_missing_1"] != null
                    ? data.json["generator_missing_1"]
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
              child: Text("b. Check the starting cable for damage"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("-No damage to the string and handle"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_2",
                initialValue: data.json["generator_faulty_2"] != null
                    ? data.json["generator_faulty_2"]
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
                name: "generator_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_2"] != null
                    ? data.json["generator_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (b)',
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
              child: Text("c. Check fuel level. (Top up if necessary)"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "- Ensure fuel level indicator is functional & ensure there is enough fuel"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_3",
                initialValue: data.json["generator_faulty_3"] != null
                    ? data.json["generator_faulty_3"]
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
                name: "generator_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_3"] != null
                    ? data.json["generator_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (c)',
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
              child: Text("d. Check on fuel pot"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Ensure filter is not black in colour"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_4",
                initialValue: data.json["generator_faulty_4"] != null
                    ? data.json["generator_faulty_4"]
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
                name: "generator_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_4"] != null
                    ? data.json["generator_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (d)',
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
              child: Text("e. Check fuel tank"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Ensure it is in ON position"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_5",
                initialValue: data.json["generator_faulty_5"] != null
                    ? data.json["generator_faulty_5"]
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
                name: "generator_remarks_5",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_5"] != null
                    ? data.json["generator_remarks_5"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (e)',
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
              child: Text("f. Check on fuel filter"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- No residue in filter and not damaged"),
                  Text("- Check for the presence of air/water"),
                ],
              ),
              width: 175,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_6",
                initialValue: data.json["generator_faulty_6"] != null
                    ? data.json["generator_faulty_6"]
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
                name: "generator_remarks_6",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_6"] != null
                    ? data.json["generator_remarks_6"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (f)',
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
                "Inform any of the regulars if water/air was found",
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
                  "g. Check on engine oil level and oil stains. Top up if necessary"),
              width: 125,
              height: 64,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Between max and min on dipstick"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_7",
                initialValue: data.json["generator_faulty_7"] != null
                    ? data.json["generator_faulty_7"]
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
                name: "generator_remarks_7",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_7"] != null
                    ? data.json["generator_remarks_7"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (g)',
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
              child: Text("h. Check for any fluid and oil leakage"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- No leak on fuel path"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_8",
                initialValue: data.json["generator_faulty_8"] != null
                    ? data.json["generator_faulty_8"]
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
                name: "generator_remarks_8",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_8"] != null
                    ? data.json["generator_remarks_8"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (h)',
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
              child: Text("i. Check for next PM due date"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  FormBuilderDateTimePicker(
                    name: "left_generator_due_date",
                    initialValue: data.json["left_generator_due_date"] != null
                        ? DateFormat("yyyy-MM-dd hh:mm:ss")
                            .parse(data.json["left_generator_due_date"])
                        : DateTime.now(),
                    decoration: InputDecoration(
                      labelText: 'Left Generator Due Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  FormBuilderDateTimePicker(
                    name: "right_generator_due_date",
                    initialValue: data.json["right_generator_due_date"] != null
                        ? DateFormat("yyyy-MM-dd hh:mm:ss")
                            .parse(data.json["right_generator_due_date"])
                        : DateTime.now(),
                    decoration: InputDecoration(
                      labelText: 'Right Generator Due Date',
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
                name: "generator_faulty_9",
                initialValue: data.json["generator_faulty_9"] != null
                    ? data.json["generator_faulty_9"]
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
                name: "generator_remarks_9",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_9"] != null
                    ? data.json["generator_remarks_9"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (i)',
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
                "Not to be used if due",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("j. Start the generators"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Engine is able to run"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_10",
                initialValue: data.json["generator_faulty_10"] != null
                    ? data.json["generator_faulty_10"]
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
                name: "generator_remarks_10",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_10"] != null
                    ? data.json["generator_remarks_10"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (j)',
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
              child: Text("k. Check with Volt-meter"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Ensure 26V to 30V"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_11",
                initialValue: data.json["generator_faulty_11"] != null
                    ? data.json["generator_faulty_11"]
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
                name: "generator_remarks_11",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_11"] != null
                    ? data.json["generator_remarks_11"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (k)',
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
              child: Text("l. Check output voltage on the connector"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- Use multi-meter to check the output voltage"),
                  Text("- Ensure 26V - 30V                           "),
                ],
              ),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "generator_faulty_12",
                initialValue: data.json["generator_faulty_12"] != null
                    ? data.json["generator_faulty_12"]
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
                name: "generator_remarks_12",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["generator_remarks_12"] != null
                    ? data.json["generator_remarks_12"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Generator (l)',
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
                "Indicate Generator voltage,\nLeft :\nRight : ",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              width: 175,
              height: 80,
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
              child: Column(
                children: <Widget>[
                  Text("- No damage       "),
                  Text("- No exposed wires"),
                ],
              ),
              width: 175,
              height: 42,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "power_cable_faulty",
                initialValue: data.json["power_cable_faulty"] != null
                    ? data.json["power_cable_faulty"]
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
                name: "power_cable_remarks",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["power_cable_remarks"] != null
                    ? data.json["power_cable_remarks"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Power cable',
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
                name: "power_cable_missing",
                initialValue: data.json["power_cable_missing"] != null
                    ? data.json["power_cable_missing"]
                    : false,
                title: Text(
                  "2 pcs",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              width: 112,
              height: 72,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text(
                  "a. Check physical condition, loose bolts, nuts & wiring connection"),
              width: 125,
              height: 64,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: 'PDB_serial_number',
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["PDB_serial_number"] != null
                    ? data.json["PDB_serial_number"]
                    : "",
                decoration: InputDecoration(
                  labelText: 'Serial No :',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: 175,
              height: 42,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "PDB_faulty_1",
                initialValue: data.json["PDB_faulty_1"] != null
                    ? data.json["PDB_faulty_1"]
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
                name: "PDB_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["PDB_remarks_1"] != null
                    ? data.json["PDB_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'PDB (a)',
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
                name: "PDB_missing_1",
                initialValue: data.json["PDB_missing_1"] != null
                    ? data.json["PDB_missing_1"]
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
              child: Text("b. Check lighting"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Generator indicators are lighted"),
              width: 175,
              height: 42,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "PDB_faulty_2",
                initialValue: data.json["PDB_faulty_2"] != null
                    ? data.json["PDB_faulty_2"]
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
                name: "PDB_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["PDB_remarks_2"] != null
                    ? data.json["PDB_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Power Distribution Board (b)',
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
              child: Text("c. Check gen voltage"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child:
                  Text("- Ensure 26V - 30 V and low voltage alarm not lighted"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "PDB_faulty_3",
                initialValue: data.json["PDB_faulty_3"] != null
                    ? data.json["PDB_faulty_3"]
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
                name: "PDB_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["PDB_remarks_3"] != null
                    ? data.json["PDB_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Power Distribution Board (c)',
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
              child: Text("d. On Circuit breaker"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text("- Able to power up all equipments"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "PDB_faulty_4",
                initialValue: data.json["PDB_faulty_4"] != null
                    ? data.json["PDB_faulty_4"]
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
                name: "PDB_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["PDB_remarks_4"] != null
                    ? data.json["PDB_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Power Distribution Board (d)',
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
                  "a. Check for physical condition, loose bolts, nuts & wiring connection"),
              width: 125,
              height: 85,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: 'inverter_serial_number',
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["inverter_serial_number"] != null
                    ? data.json["inverter_serial_number"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Serial Number :',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "inverter_faulty_1",
                initialValue: data.json["inverter_faulty_1"] != null
                    ? data.json["inverter_faulty_1"]
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
                name: "inverter_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["inverter_remarks_1"] != null
                    ? data.json["inverter_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Inverter (a)',
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
                name: "inverter_missing_1",
                initialValue: data.json["inverter_missing_1"] != null
                    ? data.json["inverter_missing_1"]
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
              child: Text("b. Check lighting"),
              width: 125,
              height: 85,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text('- Toggle ON Input power and switch ON the switch'),
                  Text(
                      '- Ensure LED lighted from RED change to GREEN and toggle ON output power'),
                ],
              ),
              width: 175,
              height: 128,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "inverter_faulty_2",
                initialValue: data.json["inverter_faulty_2"] != null
                    ? data.json["inverter_faulty_2"]
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
                name: "inverter_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["inverter_remarks_2"] != null
                    ? data.json["inverter_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Inverter (b)',
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
              child: Text("c. Check power socket"),
              width: 125,
              height: 85,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text('- Able to power 230V equipment'),
              width: 175,
              height: 96,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "inverter_faulty_3",
                initialValue: data.json["inverter_faulty_3"] != null
                    ? data.json["inverter_faulty_3"]
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
                name: "inverter_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["inverter_remarks_3"] != null
                    ? data.json["inverter_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Inverter (c)',
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
