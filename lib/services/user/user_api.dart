import 'package:base_project_flutter/models/user_model.dart';
import 'package:dio/dio.dart';

class UserAPI {
  final Dio _dio = Dio();
  final String _urlBase = "https://reqres.in/api/users/3";

  Future<User> fetchUser() async {
    // Single GET Method
    try {
      var response = await _dio.get(_urlBase);
      if (response.statusCode == 200) {
        return User.fromJson(response.data);
      }
     
      return response.data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  
}
