import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginValidationProvider =
    ChangeNotifierProvider.autoDispose<LoginValidation>((ref) {
  return LoginValidation();
});

class LoginValidation extends ChangeNotifier {
  var isEmailValid = false;
  var isPasswordValid = false;
}
