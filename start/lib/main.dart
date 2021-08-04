import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture/core/services/authentication_service.dart';
import 'package:provider_architecture/locator.dart';
import 'package:provider_architecture/ui/router.dart';
import 'core/models/user.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

// Starting point for the app.
// Uses stream provider to create a new user and then redirects to the login page.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>(
      initialData: User.initial(),
      create: (context) =>
          locator<AuthenticationService>().userController.stream,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        initialRoute: '/login',
        onGenerateRoute: myRouter.generateRoute,
      ),
    );
  }
}
