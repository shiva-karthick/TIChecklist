import 'dart:async';

import 'package:provider_architecture/core/models/user.dart';

import '../../locator.dart';
import 'api.dart';

class AuthenticationService {
  Api _api = locator<Api>();

  StreamController<User> userController = new StreamController<User>();

  Future<bool> login(String userID) async {
    userController.add(
      User(username: userID),
    );

    return true;
  }
}
