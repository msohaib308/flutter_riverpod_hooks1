import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

ChangeNotifierProvider<LoginPageState> loginPageProvider =
    new ChangeNotifierProvider<LoginPageState>((ref) => new LoginPageState());

class LoginPageState extends ChangeNotifier {
  var isLoginProcess = false;

  void applyNotifier() {
    notifyListeners();
  }
}
