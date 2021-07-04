import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class OtherPersonnel extends StatelessWidget {
  const OtherPersonnel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilderTextField(
        name: 'otherPersonnel',
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
