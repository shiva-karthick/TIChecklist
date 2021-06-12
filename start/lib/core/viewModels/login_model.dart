import 'package:provider_architecture/core/enums/viewstate.dart';
import 'package:provider_architecture/core/viewModels/base_model.dart';
import 'package:provider_architecture/locator.dart';
import '../services/authentication_service.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  String errorMessage;

  Future<bool> login(userIDText) async {
    setState(ViewState.Busy);

    var userID = int.tryParse(userIDText);
    if (userID == null) {
      errorMessage = 'Value entered is not a number';
      setState(ViewState.Idle);
      return false;
    }
    var success = await _authenticationService.login(userID);

    setState(ViewState.Idle);
    return success;
  }
}
