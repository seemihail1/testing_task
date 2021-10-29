import 'package:testing_task/domain/api_clients/auth_api_client.dart';
import 'package:testing_task/domain/data_providers/session_data_provider.dart';

class AuthService {
  final _apiClient = AuthApiClient();
  final _sessionDataProvider = SessionDataProvider();
  Future<void> auth() async {
    final accessToken = await _apiClient.getAccessTokenFromServer();
    await _sessionDataProvider.setAccessToken(accessToken);
  }
}
