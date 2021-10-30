import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:testing_task/domain/factories/screen_factory.dart';
import 'package:testing_task/resources/resources.dart';
import 'package:testing_task/ui/theme/app_colors.dart';
import 'package:testing_task/ui/widgets/main_screen/main_screen_view_model.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _IndexedStack(),
      bottomNavigationBar: _BottomNavigationBar(),
    );
  }
}

class _IndexedStack extends StatelessWidget {
  const _IndexedStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenFactory = ScreenFactory();
    final viewModel = context.read<MainScreenViewModel>();

    return Observer(
      builder: (_) => IndexedStack(
        index: viewModel.selectedTab,
        children: [
          screenFactory.createNewsScreen(),
          const Center(child: Text('Health')),
          const Center(child: Text('Profile')),
          const Center(child: Text('Activity')),
          const Center(child: Text('Map')),
        ],
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MainScreenViewModel>();

    return Observer(
      builder: (_) => BottomNavigationBar(
        selectedItemColor: AppColors.redAccentColor,
        currentIndex: viewModel.selectedTab,
        items: [
         viewModel.createItem(imageName: AppImages.news, label: 'News'),
          viewModel.createItem(imageName: AppImages.apple, label: 'Health'),
          viewModel.createItem(imageName: AppImages.profile, label: 'Progile'),
          viewModel.createItem(imageName: AppImages.dumbbell, label: 'Activity'),
          viewModel.createItem(imageName: AppImages.map, label: 'Map'),
        ],
        onTap: viewModel.onSelectedTab,
      ),
    );
  }
}
