import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tipik_figma/model/Requests/UserLoginRequest.dart';
import 'package:tipik_figma/network/constants/constants.dart';
import 'package:tipik_figma/network/service/LoginService.dart';

import './login_screen.dart';

abstract class LoginViewModel extends State<Login> with LoginConstants {
  late final LoginService loginService;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final dio = Dio(BaseOptions(baseUrl: base));
    loginService = LoginService(dio);
  }

  Future<bool> fetchLogin(String username, String password) async {
    final response =
        await loginService.tryLogin(UserLoginRequest(username, password));
    if (response == null) {
      print("Not Done");
      return false;
    } else {
      print(response.token);
      return true;
    }
  }
}
