import 'package:flutter/widgets.dart';
import '../enums/viewstate.dart';

/// Represents the state of the view
// enum ViewState { Idle, Busy }

class BaseModel extends ChangeNotifier {
  /// State Management code

  /// private variable; the starting value is always idle.
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
