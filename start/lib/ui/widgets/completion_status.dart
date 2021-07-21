import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CompletionStatus extends StatefulWidget {
  final double value;
  const CompletionStatus({Key key, this.value}) : super(key: key);

  @override
  _CompletionStatusState createState() => _CompletionStatusState();
}

class _CompletionStatusState extends State<CompletionStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilderSlider(
        name: 'slider',
        min: 0.0,
        max: 10.0,
        initialValue: widget.value ?? 5.0,
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
