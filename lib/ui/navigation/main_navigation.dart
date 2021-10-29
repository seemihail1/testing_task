import 'package:flutter/material.dart';
import 'package:testing_task/domain/factories/screen_factory.dart';

abstract class MainNavigationRouteNames {
  static const auth = '/auth';
  static const mainScreen = '/main_screen';
  static const newsScreen = '/main_screen/news';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.mainScreen: (_) =>
        _screenFactory.createMainScreen(),
    MainNavigationRouteNames.auth: (_) => _screenFactory.createAuthScreen(),
  };
}
