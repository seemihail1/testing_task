import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_task/ui/widgets/auth_screen/auth_screen_view.dart';
import 'package:testing_task/ui/widgets/auth_screen/auth_screen_view_model.dart';
import 'package:testing_task/ui/widgets/main_screen/main_screen_view.dart';
import 'package:testing_task/ui/widgets/main_screen/main_screen_view_model.dart';
import 'package:testing_task/ui/widgets/news_screen/news_screen_view_model.dart';
import 'package:testing_task/ui/widgets/news_screen/news_screen_view.dart';

class ScreenFactory {
  Widget createMainScreen() {
    return Provider<MainScreenViewModel>(
      create: (_) => MainScreenViewModel(),
      child: const MainScreenWidget(),
    );
  }

  Widget createAuthScreen() {
    return Provider<AuthScreenViewModel>(
      create: (_) => AuthScreenViewModel(),
      child: const AuthScreenWidget(),
    );
  }

  Widget createNewsScreen() {
    return Provider<NewsScreenViewModel>(
      create: (_) => NewsScreenViewModel(),
      child: const NewsScreenWidget(),
    );
  }
}
