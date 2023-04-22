import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheManager {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  final String _tokenKey = "token";
  final String _initialKey = "initial";
  Future<String?> getToken() async {
    String? token = await storage.read(key: _tokenKey);
    print(token);
    return token;
  }

  Future<void> setToken(String token) async {
    print("storing token $token");
    await storage.write(key: _tokenKey, value: token);
  }

  Future setInitial() async {
    await storage.write(key: _initialKey, value: "A");
  }

  Future<String?> getInitial() async {
    return await storage.read(key: _initialKey);
  }

  Future<void> deleteInit() async { // for debugging purpose only
    await storage.delete(key: _initialKey);
  }

  Future<void> deleteToken() async {
    print("token deleted!");
    await storage.delete(key: _tokenKey);
  }
}
