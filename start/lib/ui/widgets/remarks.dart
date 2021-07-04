import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Remarks extends StatelessWidget {
  const Remarks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilderTextField(
        name: 'remarks',
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: InputDecoration(
          icon: Icon(Icons.label_important_outline_sharp),
          hintText: 'Check and confirm laptop serial number ... ',
          labelText: 'Remarks',
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
