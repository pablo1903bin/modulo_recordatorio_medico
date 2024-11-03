
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_module/app/domain/failures/http/http_request_failure.dart';

part 'login_user_failure.freezed.dart';

@freezed
class LoginUserFailure with _$LoginUserFailure {

  const factory LoginUserFailure.httpFailure(
    HttpRequestFailure httpFailure,
  ) = _LoginUserFailureHttpFailure;

  const factory LoginUserFailure.invalidCredentials() = _InvalidCredentials;

  const factory LoginUserFailure.unexpected() = _Unexpected;
}
