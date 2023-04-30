import 'package:flutter/material.dart';
import './CacheManager.dart';

class AuthManager extends CacheManager {
  BuildContext ctx;
  String? token;
  bool isLogin;
  bool initial;
  AuthManager(this.ctx, {this.isLogin = false, this.initial = true}) {
    token = null;
    fetchInit();
    fetchUserToken();
  }
  Future<void> fetchUserToken() async {
    final tempToken = await getToken();
    if (token != null) {
      token = tempToken;
      isLogin = true;
    }
  }

  Future<void> fetchInit() async {
    final init = await getInitial();
    print(init);
    if (init != null) {
      initial = false;
    }
  }
}

