import 'package:testing_task/domain/api_clients/news_api_client.dart';
import 'package:testing_task/domain/entity/news_response.dart';

class NewsService {
  final _newsApiClient = NewsApiClient();

  Future<List<Post>> getNews(String accessToken) async {
    final result = await _newsApiClient.getNews(accessToken);
    return result;
  }
}
