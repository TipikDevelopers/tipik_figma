import "package:dio/dio.dart";
import "package:tipik_figma/model/User/UserModel.dart";

class SMSService {
  final Dio dio;
  SMSService(this.dio);
  Future<void> pushTelNumber(String number) async {
    Map<String, String> codeJson = {"number": number};
    final response = await dio.post("api/v1/auth/login", data: codeJson);
  }

  Future<UserModel?> verifySms(String phoneNum, String code) async {
    Map<String, String> codePhone = {"number": phoneNum, "otp": code};
    final response = await dio.post("api/v1/auth/verifyCode", data: codePhone);
    if (response.statusCode! < 300) {
      if (response.data["response"] == "pending") {
        return null;
      } else {
        return UserModel(response.data["data"]);
      }
    }
  }
}
