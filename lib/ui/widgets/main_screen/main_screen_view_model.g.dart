// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainScreenViewModel on _MainScreenViewModel, Store {
  final _$selectedTabAtom = Atom(name: '_MainScreenViewModel.selectedTab');

  @override
  int get selectedTab {
    _$selectedTabAtom.reportRead();
    return super.selectedTab;
  }

  @override
  set selectedTab(int value) {
    _$selectedTabAtom.reportWrite(value, super.selectedTab, () {
      super.selectedTab = value;
    });
  }

  final _$_MainScreenViewModelActionController =
      ActionController(name: '_MainScreenViewModel');

  @override
  void onSelectedTab(int index) {
    final _$actionInfo = _$_MainScreenViewModelActionController.startAction(
        name: '_MainScreenViewModel.onSelectedTab');
    try {
      return super.onSelectedTab(index);
    } finally {
      _$_MainScreenViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTab: ${selectedTab}
    ''';
  }
}
