import 'dart:io';

import 'package:dio/dio.dart';

import '../constants/constants.dart';
import '../../model/User/UserModel.dart';
import '../../model/Requests/UserLoginRequest.dart';

class LoginService with LoginConstants {
  final Dio dio;
  LoginService(this.dio);
  Future<UserModel?> tryLogin(UserLoginRequest model) async {
    final response = await dio.post(loginPath, data: model.toJson());
    if (response.statusCode == HttpStatus.ok) {
      return UserModel.fromJson(response.data);
    }
    return null;
  }
}
