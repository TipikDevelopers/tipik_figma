import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheManager {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  final String _tokenKey = "token";
  final String _initialKey = "initial";
  Future<String?> getToken() async {
    return await storage.read(key: _tokenKey);
  }

  Future<void> setToken(String token) async {
    await storage.write(key: _tokenKey, value: token);
  }

  Future setInitial() async {
    await storage.write(key: _initialKey, value: "A");
  }

  Future<String?> getInitial() async {
    return await storage.read(key: _initialKey);
  }
}
