import '../constants/Endpoints.dart';
import 'package:dio/dio.dart';

class DioClient {
// dio instance
  final Dio _dio;

  DioClient(this._dio) {
    _dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout = const Duration(seconds: Endpoints.connectionTimeout)
      ..options.receiveTimeout = const Duration(seconds:Endpoints.receiveTimeout)
      ..options.responseType = ResponseType.json;
  }
}
