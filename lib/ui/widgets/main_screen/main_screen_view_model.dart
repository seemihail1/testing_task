import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:testing_task/ui/theme/app_colors.dart';
part 'main_screen_view_model.g.dart';

class MainScreenViewModel = _MainScreenViewModel with _$MainScreenViewModel;

abstract class _MainScreenViewModel with Store {
  @observable
  int selectedTab = 0;

  @action
  void onSelectedTab(int index) {
    if (selectedTab == index) {
      return;
    }
    selectedTab = index;
  }

  BottomNavigationBarItem createItem(
      {required String imageName, required String label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        imageName,
        color: AppColors.whiteAccentColor,
      ),
      activeIcon: Image.asset(
        imageName,
        color: AppColors.redAccentColor,
      ),
      label: label,
    );
  }
}
