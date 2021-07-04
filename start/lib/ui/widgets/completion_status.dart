import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CompletionStatus extends StatelessWidget {
  const CompletionStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilderSlider(
        name: 'slider',
        min: 0.0,
        max: 10.0,
        initialValue: 7.0,
        divisions: 10,
        activeColor: Colors.green,
        inactiveColor: Colors.black,
        decoration: InputDecoration(
          labelText: 'Completion Status',
        ),
      ),
    );
  }
}
