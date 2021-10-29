import 'package:dio/dio.dart';
import 'package:testing_task/configuration/api_config.dart';
import 'package:testing_task/domain/entity/news_response.dart';

class NewsApiClient {
  var dio = Dio();

  Future<List<Post>> getNews(String accessToken) async {
    final newsHost = ApiConfig.newsHost;
    final options = Options(headers: {
      "Authorization": 'Bearer $accessToken',
    });
    final response = await dio.get(
      newsHost,
      options: options,
    );
    final jsonMap = response.data['result'];
    final result = Result.fromJson(jsonMap);
    return result.posts;
  }
}
