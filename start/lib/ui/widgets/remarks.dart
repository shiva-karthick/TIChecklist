import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Remarks extends StatefulWidget {
  final String remarks;
  const Remarks({Key key, this.remarks}) : super(key: key);

  @override
  _RemarksState createState() => _RemarksState();
}

class _RemarksState extends State<Remarks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilderTextField(
        name: 'remarks',
        initialValue: widget.remarks != null ? widget.remarks : '',
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
      ),
    );
  }
}
