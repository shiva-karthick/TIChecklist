import 'dart:async';
import 'package:provider_architecture/core/models/user.dart';

class AuthenticationService {
  StreamController<User> userController = new StreamController<User>();

  Future<bool> login(String userID) async {
    userController.add(
      User(username: userID),
    );

    return true;
  }
}
