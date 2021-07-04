import 'package:flutter/material.dart';
import 'package:provider_architecture/core/enums/viewstate.dart';
import 'package:provider_architecture/core/viewModels/login_model.dart';
import 'package:provider_architecture/ui/shared/styles.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import 'package:provider_architecture/ui/views/base_view.dart';
import '../widgets/login_header.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var backgroundColor;
    return BaseView<LoginModel>(
      onModelReady: (model) {
        // Call something on the model,
        // perform any starting logic code we want to use,
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.dstATop),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  LoginHeader(
                    controller: controller,
                    validationMessage: model.errorMessage,
                  ),
                  model.state == ViewState.Busy
                      ? LinearProgressIndicator()
                      : ElevatedButton(
                          child: Text(
                            'Login',
                          ),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(color: Colors.black),
                            primary: Colors.green,
                          ),
                          onPressed: () async {
                            var loginSuccess =
                                await model.login(controller.text);
                            if (loginSuccess) {
                              /// Navigate to home view
                              Navigator.pushNamed(context, '/');
                            }
                          },
                        ),
                  UIHelper.verticalSpaceLarge(),
                  UIHelper.verticalSpaceLarge(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
