import 'package:flutter/material.dart';
import 'package:tipik_figma/login/sms_screen.dart';
import 'package:dio/dio.dart';
import 'package:tipik_figma/network/service/SMSService.dart';
import '../network/constants/constants.dart';

abstract class SMSViewModel extends State<SMSScreen> with LoginConstants {
  late final SMSService smsService;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final Dio dio = Dio(BaseOptions(baseUrl: base));
    smsService = SMSService(dio);
  }
}
