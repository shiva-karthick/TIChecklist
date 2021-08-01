import 'package:flutter/material.dart';
import 'package:provider_architecture/ui/shared/text_styles.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';

class LoginHeader extends StatelessWidget {
  final TextEditingController controller;
  final String validationMessage;

  /// {optional named parameters}
  LoginHeader({@required this.controller, this.validationMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Login',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
            color: Colors.black,
            // backgroundColor: Colors.white,
          ),
        ),
        UIHelper.verticalSpaceSmall(),
        Text(
          'Enter your name',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        LoginTextField(controller),
        this.validationMessage != null
            ? Text(
                validationMessage,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  backgroundColor: Colors.white,
                ),
              )
            : Container()
      ],
    );
  }
}

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;

  LoginTextField(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      height: 50.0,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
          decoration: InputDecoration.collapsed(hintText: 'Enter name'),
          controller: controller),
    );
  }
}
