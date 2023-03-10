import 'package:dio/dio.dart';
import '../dio_client.dart';
import '../../constants/Endpoints.dart';

class UserApi {
  final DioClient dioClient;
  UserApi({required this.dioClient});
//--------------------For SignUp Part ----------------------------
  Future<Response> addUserApi(String name, String job) async {
    try {
      final Response response = await dioClient.post(
        Endpoints.users,
        data: {
          'name': name,
          'job': job,
        },
      );
      return response;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

//----------------- For Login Part ------------------------
  Future<Response> getUsersApi() async {
    try {
      final Response response = await dioClient.get(Endpoints.users);
      return response;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

//------------- For Deletion I Do not know what the f we do with that method but just in case-------------------
  Future<void> deleteUserApi(int id) async {
    try {
      await dioClient.delete("${Endpoints.users}/$id");
    } catch (e) {
      //print(e.toString());
      rethrow;
    }
  }

  //------- For updating a user -----------------------
  Future<Response> updateUserApi(int id, String name, String job) async {
    try {
      final Response response = await dioClient.put(
        Endpoints.users + '/$id',
        data: {
          'name': name,
          'job': job,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
