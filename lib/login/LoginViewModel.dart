import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tipik_figma/Core/AuthManager.dart';
import 'package:tipik_figma/Core/CacheManager.dart';
import 'package:tipik_figma/model/Requests/UserLoginRequest.dart';
import 'package:tipik_figma/network/constants/constants.dart';
import 'package:tipik_figma/network/service/LoginService.dart';

import './login_screen.dart';

abstract class LoginViewModel extends State<Login> with LoginConstants {
  late final LoginService loginService;
  @override
  void initState() {
    super.initState();
    final dio = Dio(BaseOptions(baseUrl: base));
    loginService = LoginService(dio);
  }

  Future<void> fetchLogin(AuthManager? manager, String username, String password) async {
    final response =
        await loginService.tryLogin(UserLoginRequest(username, password));
    if (response == null) {
      print("failed");
    } else {
      manager?.setToken(response.token);
      print(response.token);
    }
  }
}
