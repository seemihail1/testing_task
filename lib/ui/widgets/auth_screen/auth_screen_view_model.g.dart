// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthScreenViewModel on _AuthScreenViewModel, Store {
  Computed<bool>? _$canSignInComputed;

  @override
  bool get canSignIn =>
      (_$canSignInComputed ??= Computed<bool>(() => super.canSignIn,
              name: '_AuthScreenViewModel.canSignIn'))
          .value;

  final _$nicknameAtom = Atom(name: '_AuthScreenViewModel.nickname');

  @override
  String get nickname {
    _$nicknameAtom.reportRead();
    return super.nickname;
  }

  @override
  set nickname(String value) {
    _$nicknameAtom.reportWrite(value, super.nickname, () {
      super.nickname = value;
    });
  }

  final _$passwordAtom = Atom(name: '_AuthScreenViewModel.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$passwordVisibleAtom =
      Atom(name: '_AuthScreenViewModel.passwordVisible');

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  final _$onAutnButtonPressedAsyncAction =
      AsyncAction('_AuthScreenViewModel.onAutnButtonPressed');

  @override
  Future<void> onAutnButtonPressed(BuildContext context) {
    return _$onAutnButtonPressedAsyncAction
        .run(() => super.onAutnButtonPressed(context));
  }

  final _$_AuthScreenViewModelActionController =
      ActionController(name: '_AuthScreenViewModel');

  @override
  void validateNickname(String value) {
    final _$actionInfo = _$_AuthScreenViewModelActionController.startAction(
        name: '_AuthScreenViewModel.validateNickname');
    try {
      return super.validateNickname(value);
    } finally {
      _$_AuthScreenViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_AuthScreenViewModelActionController.startAction(
        name: '_AuthScreenViewModel.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_AuthScreenViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPasswordVisibilityButtonPressed() {
    final _$actionInfo = _$_AuthScreenViewModelActionController.startAction(
        name: '_AuthScreenViewModel.onPasswordVisibilityButtonPressed');
    try {
      return super.onPasswordVisibilityButtonPressed();
    } finally {
      _$_AuthScreenViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nickname: ${nickname},
password: ${password},
passwordVisible: ${passwordVisible},
canSignIn: ${canSignIn}
    ''';
  }
}

mixin _$AuthErrors on _AuthErrors, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors => (_$hasErrorsComputed ??=
          Computed<bool>(() => super.hasErrors, name: '_AuthErrors.hasErrors'))
      .value;

  final _$nicknameErrorAtom = Atom(name: '_AuthErrors.nicknameError');

  @override
  String? get nicknameError {
    _$nicknameErrorAtom.reportRead();
    return super.nicknameError;
  }

  @override
  set nicknameError(String? value) {
    _$nicknameErrorAtom.reportWrite(value, super.nicknameError, () {
      super.nicknameError = value;
    });
  }

  final _$passwordErrorAtom = Atom(name: '_AuthErrors.passwordError');

  @override
  String? get passwordError {
    _$passwordErrorAtom.reportRead();
    return super.passwordError;
  }

  @override
  set passwordError(String? value) {
    _$passwordErrorAtom.reportWrite(value, super.passwordError, () {
      super.passwordError = value;
    });
  }

  @override
  String toString() {
    return '''
nicknameError: ${nicknameError},
passwordError: ${passwordError},
hasErrors: ${hasErrors}
    ''';
  }
}
