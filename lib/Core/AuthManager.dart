import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import './CacheManager.dart';

class AuthManager extends CacheManager {
  BuildContext ctx;
  bool isLogin;
  bool initial;
  AuthManager(this.ctx, {this.isLogin = false, this.initial = true}) {
    fetchInit();
    fetchLogin();
  }
  void fetchLogin() async {
    final token = await getToken();
    if (token != null) {
      isLogin = true;
    }
  }

  void fetchInit() async {
    final init = await getInitial();
    if (init != null) {
      initial = false;
    }
  }
}
