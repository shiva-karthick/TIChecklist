import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FMW1personnel extends StatefulWidget {
  final String fmw1Personnel;

  FMW1personnel({Key key, this.fmw1Personnel}) : super(key: key);

  @override
  _FMW1personnelState createState() => _FMW1personnelState();
}

class _FMW1personnelState extends State<FMW1personnel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilderTextField(
        name: 'fmw1Personnel',
        initialValue: widget.fmw1Personnel != null ? widget.fmw1Personnel : '',
        keyboardType: TextInputType.multiline,
        maxLines: null,
        validator: FormBuilderValidators.compose(
          [
            FormBuilderValidators.required(context),
          ],
        ),
        decoration: InputDecoration(
          icon: Icon(Icons.supervised_user_circle),
          hintText: 'Jun Jie, Gouthaman...',
          labelText: 'Enter names',
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
