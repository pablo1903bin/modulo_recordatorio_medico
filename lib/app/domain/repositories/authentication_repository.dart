


import 'package:my_flutter_module/app/domain/failures/loguin/login_user_failure.dart';
import 'package:my_flutter_module/app/domain/models/loguin/user_loguin_response.dart';

import '../functional/respuesta.dart';
import '../models/user.dart';

abstract class AuthenticationRepository {
  Future<bool> get isSignedIn;
  Future<User?> getUseDta();
    Future<String?> getNameUser();
  Future<Respuesta<LoginUserFailure, UserLoginResponse>> signIn(String username, String pass);
  Future<String?> getToken();
  Future<bool> login(String username, String password);
  Future<void> signOut();
  Future<bool> isLoggedIn();
}
