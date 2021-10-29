import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:testing_task/domain/services/auth_service.dart';
import 'package:testing_task/ui/navigation/main_navigation.dart';

part 'auth_screen_view_model.g.dart';

class AuthScreenViewModel = _AuthScreenViewModel with _$AuthScreenViewModel;

abstract class _AuthScreenViewModel with Store {
  final _authService = AuthService();

  final error = AuthErrors();

  @observable
  String nickname = '';

  @observable
  String password = '';

  @action
  void validateNickname(String value) {
    RegExp regExp = RegExp(r'^[a-zA-Z_]+$');
    if (!regExp.hasMatch(value)) {
      error.nicknameError = 'Invalid nickname!';
    }
  }

  @action
  void validatePassword(String value) {
    if (value.trim().length < 3 || value.trim().length > 9) {
      error.passwordError = 'Invalid password!';
    }
  }

  @observable
  bool passwordVisible = true;

  @computed
  bool get canSignIn =>
      nickname.trim().isNotEmpty && password.trim().isNotEmpty;

  @action
  Future<void> onAutnButtonPressed(BuildContext context) async {
    await _authService.auth();
    validateNickname(nickname);
    validatePassword(password);
    if (!error.hasErrors) {
      Navigator.of(context)
          .pushReplacementNamed(MainNavigationRouteNames.mainScreen);
    }
  }

  @action
  void onPasswordVisibilityButtonPressed(){
    passwordVisible=!passwordVisible;
  }
}

class AuthErrors = _AuthErrors with _$AuthErrors;

abstract class _AuthErrors with Store {
  @observable
  String? nicknameError;

  @observable
  String? passwordError;

  @computed
  bool get hasErrors => nicknameError != null || passwordError != null;
}
