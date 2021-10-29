import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:testing_task/resources/resources.dart';
import 'package:testing_task/ui/widgets/news_screen/news_screen_decoration.dart';
import 'package:testing_task/ui/widgets/news_screen/news_screen_view_model.dart';

class NewsScreenWidget extends StatefulWidget {
  const NewsScreenWidget({Key? key}) : super(key: key);

  @override
  State<NewsScreenWidget> createState() => _NewsScreenWidgetState();
}

class _NewsScreenWidgetState extends State<NewsScreenWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<NewsScreenViewModel>().loadNews());
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      var _isLoading =
          context.select((NewsScreenViewModel model) => model.isLoading);
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'News',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: _isLoading ? const _LoaderWidget() : const _NewsList(),
      );
    });
  }
}

class _LoaderWidget extends StatelessWidget {
  const _LoaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: NewsScreenDecoration.loaderDecoration,
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}

class _NewsList extends StatelessWidget {
  const _NewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<NewsScreenViewModel>();
    return Observer(
      builder: (context) => ListView.builder(
          itemCount: model.posts.length,
          itemBuilder: (BuildContext context, int index) {
            return _NewsCardWidget(index: index);
          }),
    );
  }
}

class _NewsCardWidget extends StatelessWidget {
  const _NewsCardWidget({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<NewsScreenViewModel>();
    final userName = viewModel.posts[index].user.firstName;
    final userLastName = viewModel.posts[index].user.lastName;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        decoration: NewsScreenDecoration.roundCornerContainerDecoration,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: NewsScreenDecoration.avatarContainerDecoration,
                  child: const Padding(
                    padding: EdgeInsets.all(2),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(AppImages.avatar),
                    ),
                  ),
                ),
                const SizedBox(width: 18),
                Text(
                  userName + ' ' + userLastName,
                  style: NewsScreenDecoration.postHeaderTextStyle,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Column(
                children: [
                  Text(
                    'Today was in the gym. He took a couple of dumbbells and fell. He poured hot tea on himself. Everyone started laughing. laughing. laughing.',
                    style: NewsScreenDecoration.postBodyTextStyle,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset(AppImages.like),
                      const SizedBox(width: 10),
                      const Text('28'),
                      const SizedBox(width: 23),
                      Image.asset(AppImages.comment),
                      const SizedBox(width: 10),
                      const Text('12'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
