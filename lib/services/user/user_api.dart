import 'package:base_project_flutter/models/user_model.dart';
import 'package:dio/dio.dart';

class UserAPI {
  final Dio _dio = Dio();
  final String _urlBase = "https://reqres.in/api/users/3";

  Future<User> fetchUser() async {
    try {
      var response = await _dio.get(_urlBase);
      return User.fromJson(response.data);
      // if (response.statusCode == 200) {
      //   return User(
      //     id: response.data['data']['id'],
      //     email: response.data['data']['email'],
      //     name: response.data['data']['first_name'] +
      //         ' ' +
      //         response.data['data']['last_name'],
      //   );
      // }

    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
