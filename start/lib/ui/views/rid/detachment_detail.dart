import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';

class DetachmentDetail extends StatelessWidget {
  const DetachmentDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UIHelper.verticalSpaceMedium(),
        FormBuilderTextField(
          name: 'vehicle_number',
          decoration: InputDecoration(
            icon: Icon(Icons.radio_rounded),
            hintText: 'MID22540',
            labelText: 'Vehicle Number',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          maxLength: 35,
        ),
        FormBuilderTextField(
          name: 'node_number',
          decoration: InputDecoration(
            icon: Icon(Icons.confirmation_number),
            hintText: 'Node 36 RID 1',
            labelText: 'Node Number and detachment name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          maxLength: 35,
        ),
        FormBuilderDateTimePicker(
          name: 'start_date_time',
          initialValue: DateTime.now(),
          decoration: InputDecoration(
            icon: Icon(Icons.date_range_rounded),
            labelText: 'Start Date/Time',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        UIHelper.verticalSpaceMedium(),
        FormBuilderDateTimePicker(
          name: 'end_date_time',
          initialValue: DateTime.now(),
          decoration: InputDecoration(
            icon: Icon(Icons.date_range_rounded),
            labelText: 'End Date/Time',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        UIHelper.verticalSpaceMedium(),
        FormBuilderDateTimePicker(
          name: 'date',
          initialValue: DateTime.now(),
          decoration: InputDecoration(
            icon: Icon(Icons.date_range_rounded),
            labelText: 'Date',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        UIHelper.verticalSpaceMedium(),
        FormBuilderTextField(
          name: 'location',
          decoration: InputDecoration(
            icon: Icon(Icons.location_city),
            hintText: 'MHC Level 3',
            labelText: 'Location',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          maxLength: 35,
        ),
      ],
    );
  }
}
