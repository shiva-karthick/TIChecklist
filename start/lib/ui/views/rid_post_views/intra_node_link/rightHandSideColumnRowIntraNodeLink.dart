import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';

Widget generateRightHandSideColumnRowIntraNodeLink(
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
                  "a. Check SIP phone able to call to DSD SIP phone or Radio Gateway"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- Connect FOCA drum from RID to DSD"),
                  Text("- Ensure switch port LED is lighted"),
                ],
              ),
              width: 175,
              height: 72,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "rid_to_dsd_faulty_1",
                initialValue: data.json["rid_to_dsd_faulty_1"] != null
                    ? data.json["rid_to_dsd_faulty_1"]
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
                name: "rid_to_dsd_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["rid_to_dsd_remarks_1"] != null
                    ? data.json["rid_to_dsd_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Intra Node (a)',
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
              child: Text("b. Continued from (a) "),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  Text("- Ensure SIP phone able to login     "),
                  Text(
                      '- Call to DSD SIP phone and ensure able to talk through'),
                  Text(
                      '- Call to radio gateway ports and ensure RGW port light up and press 1to see it blink and radio in TX mode'),
                ],
              ),
              width: 175,
              height: 176,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "rid_to_dsd_faulty_2",
                initialValue: data.json["rid_to_dsd_faulty_2"] != null
                    ? data.json["rid_to_dsd_faulty_2"]
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
                name: "rid_to_dsd_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["rid_to_dsd_remarks_2"] != null
                    ? data.json["rid_to_dsd_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Intra Node (b)',
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
              child:
                  Text("c. Check IDC Console able to do ad-hoc radio patching"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text("- Able to login to IDC console       "),
                  Text("- Able to do patching max of 4 radios"),
                ],
              ),
              width: 175,
              height: 70,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "rid_to_dsd_faulty_3",
                initialValue: data.json["rid_to_dsd_faulty_3"] != null
                    ? data.json["rid_to_dsd_faulty_3"]
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
                name: "rid_to_dsd_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["rid_to_dsd_remarks_3"] != null
                    ? data.json["rid_to_dsd_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'Intra Node (c)',
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
                name: "idc_console_missing",
                initialValue: data.json["idc_console_missing"] != null
                    ? data.json["idc_console_missing"]
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
