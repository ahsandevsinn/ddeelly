

import 'dart:developer';

import 'package:dio/dio.dart';
import '../../../core/imports/imports.dart';

class LoginService {
  static final dio = Dio();
  static login(String email, String password) async {
    try {
      final response = await dio.post(
        ApiEndPoints.login,
        data: {
          'email': email,
          'password': password,
          "device_id": "dcndjc89",
        },
      );

      return LoginResponseModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());

    }
  }
}
