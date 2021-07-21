import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class OtherPersonnel extends StatefulWidget {
  final String otherPersonnel;
  const OtherPersonnel({Key key, this.otherPersonnel}) : super(key: key);

  @override
  _OtherPersonnelState createState() => _OtherPersonnelState();
}

class _OtherPersonnelState extends State<OtherPersonnel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilderTextField(
        name: 'otherPersonnel',
        initialValue: widget.otherPersonnel ?? "",
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: InputDecoration(
          icon: Icon(Icons.supervised_user_circle),
          hintText: 'Jack, Harry...',
          labelText: 'Enter names',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: FormBuilderValidators.compose(
          [
            FormBuilderValidators.required(context),
            FormBuilderValidators.max(context, 70),
          ],
        ),
      ),
    );
  }
}
