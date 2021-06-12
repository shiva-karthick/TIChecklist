import 'dart:async';

import 'package:provider_architecture/core/models/user.dart';

import '../../locator.dart';
import 'api.dart';

class AuthenticationService {
  Api _api = locator<Api>();

  StreamController<User> userController = new StreamController<User>();

  Future<bool> login(int userID) async {
    var fetchedUser = await _api.getUserProfile(userID);

    // Check if success
    var hasUser = fetchedUser != null;

    if (hasUser) {
      userController.add(fetchedUser);
    }
    return hasUser;
  }
}
