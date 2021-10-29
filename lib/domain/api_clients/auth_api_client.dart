import 'package:dio/dio.dart';
import 'package:testing_task/configuration/api_config.dart';

class AuthApiClient {
  final _dio = Dio();

  Future<String> getAccessTokenFromServer() async {
    final bearer = ApiConfig.authBearer;
    const authHost = ApiConfig.authHost;
    final options = Options(
        headers: {
          "Authorization": 'Bearer $bearer',
        },
        validateStatus: (status) {
          return status! <= 500;
        });
    final response = await _dio.post(
      authHost,
      options: options,
    );
    final result = response.data['result'];
    final token = result['access'] as String?;
    if (token != null) {
      return token;
    }
    throw DioError;
  }
}
