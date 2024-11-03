import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:my_flutter_module/app/domain/models/loguin/user_loguin_response.dart';

import '../../../domain/functional/respuesta.dart';
import '../../http/http.dart';
import '../../http/http_app_flutter.dart';

class SignInApi {
  final HttpAppFlutter _http;
  final FlutterSecureStorage _secureStorage;

  // Constructor con parámetro posicional obligatorio y uno opcional
  SignInApi(this._secureStorage, {HttpAppFlutter? http}) : _http = http ?? HttpAppFlutter(client: Client(), hostApi: "http://45.33.13.164:8080/gateway/api");

  Future<Respuesta<HttpFailure, UserLoginResponse>> loginUser({
    required String username,
    required String password,
  }) async {
    print("Usuario:  $username");
        print("Pass:  $password");//http://45.33.13.164:8080/gateway/api
    return await _http.request<UserLoginResponse>("/authentication/sign-in",
        method: HttpMethod.post,
        headers: {
          "Content-Type": "application/json"
        },
        body: {
          'username': username,
          'password': password,
        }, procesaExito: (json) {
      return UserLoginResponse.fromJson(jsonDecode(json));
    });
  }
}
