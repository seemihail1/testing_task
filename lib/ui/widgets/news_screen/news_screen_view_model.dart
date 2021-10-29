import 'package:mobx/mobx.dart';
import 'package:testing_task/domain/data_providers/session_data_provider.dart';
import 'package:testing_task/domain/entity/news_response.dart';
import 'package:testing_task/domain/services/news_service.dart';
part 'news_screen_view_model.g.dart';

class NewsScreenViewModel = _NewsScreenViewModel with _$NewsScreenViewModel;

abstract class _NewsScreenViewModel with Store {
  final _sessionDataProvider = SessionDataProvider();
  final _newsService = NewsService();

  @observable
  bool isLoading = true;

  @observable
   List<Post> posts = [];

  @action
  Future<void> loadNews() async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    if (accessToken != null) {
      final news = await _newsService.getNews(accessToken);
      posts = news;
      isLoading = false;
    }
  }
}
