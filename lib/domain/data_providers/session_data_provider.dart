import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class _Tokens {
  static const accessToken = 'access_token';
}

class SessionDataProvider {
  static const _storage = FlutterSecureStorage();

  Future<String?> getAccessToken() => _storage.read(key: _Tokens.accessToken);

  Future<void> setAccessToken(String value) {
    return _storage.write(key: _Tokens.accessToken, value: value);
  }

  Future<void> removeAccessToken() async {
    return _storage.delete(key: _Tokens.accessToken);
  }
}
