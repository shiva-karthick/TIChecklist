import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';

Widget generateRightHandSideColumnRowVRAS(
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
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "- LCD display, audio tone,keypad okie and no other damage"),
                  Text(
                      "> Ethernet cable - VRAS client switch 1 P7 to P9 respectively"),
                ],
              ),
              width: 175,
              height: 104,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "SIP_phone_faulty_1",
                initialValue: data.json["SIP_phone_faulty_1"] != null
                    ? data.json["SIP_phone_faulty_1"]
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
                name: "SIP_phone_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["SIP_phone_remarks_1"] != null
                    ? data.json["SIP_phone_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'SIP phone (a)',
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
                name: "SIP_phone_missing_1",
                initialValue: data.json["SIP_phone_missing_1"] != null
                    ? data.json["SIP_phone_missing_1"]
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
              child: Text("b. Check IP address"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderTextField(
                name: 'SIP_phone_IP_address',
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["SIP_phone_IP_address"] != null
                    ? data.json["SIP_phone_IP_address"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'IP address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              width: 175,
              height: 62,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "SIP_phone_faulty_2",
                initialValue: data.json["SIP_phone_faulty_2"] != null
                    ? data.json["SIP_phone_faulty_2"]
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
                name: "SIP_phone_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["SIP_phone_remarks_2"] != null
                    ? data.json["SIP_phone_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'SIP phone (b)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // initialValue:
                // '',
              ),
              width: remarksWidth,
              height: remarksHeight,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                "RID 1 - x.x.x.233\n RID2 - x.x.x.234\n RID3 - x.x.x.235\n RID4 - x.x.x.236",
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
              child: Text(
                  "a. Check for physical condition, loose bolts, nuts & wiring connection"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    name: 'vras_serial_number',
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue: data.json["vras_serial_number"] != null
                        ? data.json["vras_serial_number"]
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
                  Text("> P1 - RGW1                                     "),
                  Text("> P2 - RGW2                                     "),
                  Text("> P5 - IDC laptop                               "),
                  Text("> P1 - SIP01                                    "),
                  Text("> P21 - Fiber Patch Panel FOCA 1 RID/HFD/DSD/TTD"),
                  Text("> P22 - Fiber Patch Panel FOCA 2 RID/HFD/DSD/TTD"),
                ],
              ),
              width: 175,
              height: 256,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vras_faulty_1",
                initialValue: data.json["vras_faulty_1"] != null
                    ? data.json["vras_faulty_1"]
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
                name: "vras_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vras_remarks_1"] != null
                    ? data.json["vras_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRAS (a)',
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
                name: "vras_missing_1",
                initialValue: data.json["vras_missing_1"] != null
                    ? data.json["vras_missing_1"]
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
              child: Text("b. Check connected port LED lighted"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text('- Activity LED lighted/blinking'),
              width: 175,
              height: 72,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vras_faulty_2",
                initialValue: data.json["vras_faulty_2"] != null
                    ? data.json["vras_faulty_2"]
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
                name: "vras_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vras_remarks_2"] != null
                    ? data.json["vras_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRAS (b)',
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
              child: Text("c. Check profile"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                      "- Connect console cable from FW laptop USB port to Switch console port"),
                  Text(
                      "- Console into Switch using hyperterminal                             "),
                  Text(
                      '- Ensure correct profile                                              '),
                ],
              ),
              width: 175,
              height: 104,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "vras_faulty_3",
                initialValue: data.json["vras_faulty_3"] != null
                    ? data.json["vras_faulty_3"]
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
                name: "vras_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["vras_remarks_3"] != null
                    ? data.json["vras_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'VRAS (c)',
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
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FormBuilderTextField(
                    name: 'IDC_laptop_serial_number',
                    initialValue: data.json["IDC_laptop_serial_number"] != null
                        ? data.json["IDC_laptop_serial_number"]
                        : '',
                    decoration: InputDecoration(
                      labelText: 'Serial Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text("> Ethernet cable - VRAS client switch 1 P5"),
                ],
              ),
              width: 175,
              height: 104,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "IDC_laptop_faulty_1",
                initialValue: data.json["IDC_laptop_faulty_1"] != null
                    ? data.json["IDC_laptop_faulty_1"]
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
                name: "IDC_laptop_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["IDC_laptop_remarks_1"] != null
                    ? data.json["IDC_laptop_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'IDC Laptop (a)',
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
                name: "IDC_laptop_missing_1",
                initialValue: data.json["IDC_laptop_missing_1"] != null
                    ? data.json["IDC_laptop_missing_1"]
                    : false,
                title: Text(
                  "1 pcs",
                  style: TextStyle(fontSize: 20),
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
              child: Text("b. Check IP address"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "- Ensure IP address of the network setting of the laptop is correct"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "IDC_laptop_faulty_2",
                initialValue: data.json["IDC_laptop_faulty_2"] != null
                    ? data.json["IDC_laptop_faulty_2"]
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
                name: "IDC_laptop_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["IDC_laptop_remarks_2"] != null
                    ? data.json["IDC_laptop_remarks_2"]
                    : 'IP Address:',
                decoration: InputDecoration(
                  labelText: 'IDC Laptop (b)',
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
                "IP:\nRID1 - x.x.x.133\nRID2 - x.x.x.134\nRID3 - x.x.x.135\nRID4 - x.x.x.136\nSubnet: x.x.x.224\nGateway: x.x.x.129\nDNS same as IP",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              width: 175,
              height: 168,
              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("c. Check for CMOS battery due date"),
              width: 125,
              height: 104,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderDateTimePicker(
                name: 'IDC_laptop_due_date',
                initialValue: data.json["IDC_laptop_due_date"] != null
                    ? DateFormat("yyyy-MM-dd hh:mm:ss")
                        .parse(data.json["IDC_laptop_due_date"])
                    : DateTime.now(),
                decoration: InputDecoration(
                  labelText: 'IDC Laptop due date',
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
                name: "IDC_laptop_faulty_3",
                initialValue: data.json["IDC_laptop_faulty_3"] != null
                    ? data.json["IDC_laptop_faulty_3"]
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
                name: "IDC_laptop_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["IDC_laptop_remarks_3"] != null
                    ? data.json["IDC_laptop_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'IDC Laptop (c)',
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
              child: Text("a. Check power and ready status light"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  Text("- Light should be in green colour"),
                  FormBuilderTextField(
                    name: "radio_gateway_1_serial_number",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue:
                        data.json["radio_gateway_1_serial_number"] != null
                            ? data.json["radio_gateway_1_serial_number"]
                            : '',
                    decoration: InputDecoration(
                      labelText: 'RGW 1 S/N',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 96,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "radio_gateway_1_faulty_1",
                initialValue: data.json["radio_gateway_1_faulty_1"] != null
                    ? data.json["radio_gateway_1_faulty_1"]
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
                name: "radio_gateway_1_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["radio_gateway_1_remarks_1"] != null
                    ? data.json["radio_gateway_1_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RGW 1 (a)',
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
                name: "radio_gateway_1_missing_1",
                initialValue: data.json["radio_gateway_1_missing_1"] != null
                    ? data.json["radio_gateway_1_missing_1"]
                    : false,
                title: Text(
                  "1 set",
                  style: TextStyle(fontSize: 20),
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
              child:
                  Text("b. Check all cables are connected according to label"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text('- 6 x DSUB-9 connected to Radio GateWay Panel'),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "radio_gateway_1_faulty_2",
                initialValue: data.json["radio_gateway_1_faulty_2"] != null
                    ? data.json["radio_gateway_1_faulty_2"]
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
                name: "radio_gateway_1_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["radio_gateway_1_remarks_2"] != null
                    ? data.json["radio_gateway_1_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RGW 1 (b)',
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
              child: Text("c. Check IP address"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child:
                  Text("- IP address correct according to the vehicle profile"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "radio_gateway_1_faulty_3",
                initialValue: data.json["radio_gateway_1_faulty_3"] != null
                    ? data.json["radio_gateway_1_faulty_3"]
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
                name: "radio_gateway_1_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["radio_gateway_1_remarks_3"] != null
                    ? data.json["radio_gateway_1_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RGW 1 (c)',
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
                "RID1 - x.x.x.164\nRID2 - x.x.x.165\nRID3 - x.x.x.166\nRID4 - x.x.x.167",
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
              child: Text("d. Test port by dial"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "- SIP phone dial to 6 x radio, one at a time. Port in use should light up"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "radio_gateway_1_faulty_4",
                initialValue: data.json["radio_gateway_1_faulty_4"] != null
                    ? data.json["radio_gateway_1_faulty_4"]
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
                name: "radio_gateway_1_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["radio_gateway_1_remarks_4"] != null
                    ? data.json["radio_gateway_1_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RGW 1 (d)',
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
              child: Text("a. Check power and ready status light"),
              width: 125,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Column(
                children: [
                  Text("- Light should be in green colour"),
                  FormBuilderTextField(
                    name: "radio_gateway_2_serial_number",
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    initialValue:
                        data.json["radio_gateway_2_serial_number"] != null
                            ? data.json["radio_gateway_2_serial_number"]
                            : '',
                    decoration: InputDecoration(
                      labelText: 'RGW 2 S/N',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              width: 175,
              height: 96,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "radio_gateway_2_faulty_1",
                initialValue: data.json["radio_gateway_2_faulty_1"] != null
                    ? data.json["radio_gateway_2_faulty_1"]
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
                name: "radio_gateway_2_remarks_1",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["radio_gateway_2_remarks_1"] != null
                    ? data.json["radio_gateway_2_remarks_1"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RGW 2 (a)',
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
                name: "radio_gateway_2_missing_1",
                initialValue: data.json["radio_gateway_2_missing_1"] != null
                    ? data.json["radio_gateway_2_missing_1"]
                    : false,
                title: Text(
                  "1 set",
                  style: TextStyle(fontSize: 20),
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
              child:
                  Text("b. Check all cables are connected according to label"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text('- 6 x DSUB-9 connected to Radio GateWay Panel'),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "radio_gateway_2_faulty_2",
                initialValue: data.json["radio_gateway_2_faulty_2"] != null
                    ? data.json["radio_gateway_2_faulty_2"]
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
                name: "radio_gateway_2_remarks_2",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["radio_gateway_2_remarks_2"] != null
                    ? data.json["radio_gateway_2_remarks_2"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RGW 2 (b)',
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
              child: Text("c. Check IP address"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child:
                  Text("- IP address correct according to the vehicle profile"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "radio_gateway_2_faulty_3",
                initialValue: data.json["radio_gateway_2_faulty_3"] != null
                    ? data.json["radio_gateway_2_faulty_3"]
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
                name: "radio_gateway_2_remarks_3",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["radio_gateway_2_remarks_3"] != null
                    ? data.json["radio_gateway_2_remarks_3"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RGW 2 (c)',
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
                "RID1 - x.x.x.164\nRID2 - x.x.x.165\nRID3 - x.x.x.166\nRID4 - x.x.x.167",
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
              child: Text("d. Test port by dial"),
              width: 125,
              height: 80,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                  "- SIP phone dial to 6 x radio, one at a time. Port in use should light up"),
              width: 175,
              height: 52,
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: FormBuilderCheckbox(
                name: "radio_gateway_2_faulty_4",
                initialValue: data.json["radio_gateway_2_faulty_4"] != null
                    ? data.json["radio_gateway_2_faulty_4"]
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
                name: "radio_gateway_2_remarks_4",
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: data.json["radio_gateway_2_remarks_4"] != null
                    ? data.json["radio_gateway_2_remarks_4"]
                    : '',
                decoration: InputDecoration(
                  labelText: 'RGW 2 (d)',
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
        )
      ],
    ),
  );
}
