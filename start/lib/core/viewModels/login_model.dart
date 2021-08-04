import 'package:provider_architecture/core/enums/viewstate.dart';
import 'package:provider_architecture/core/viewModels/base_model.dart';
import 'package:provider_architecture/locator.dart';
import '../services/authentication_service.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  String errorMessage;

  /// Temporarily saves the user's name to show in the Home screen using Streams
  /// See https://dart.dev/tutorials/language/streams
  ///
  /// Takes [userIDText] as a parameter, validates the data, and passes the value to
  /// Authentication Service.
  Future<bool> login(userIDText) async {
    setState(ViewState.Busy);

    if (userIDText == null || userIDText.runtimeType == int) {
      errorMessage = 'Value entered is not a Name';
      setState(ViewState.Idle);
      return false;
    } else {
      await _authenticationService.login(userIDText);
      setState(ViewState.Idle);
      return true;
    }
  }
}
