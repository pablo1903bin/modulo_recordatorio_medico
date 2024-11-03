import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_loguin_response.freezed.dart';
part 'user_loguin_response.g.dart';

@freezed
class UserLoginResponse with _$UserLoginResponse {
  const factory UserLoginResponse({
     @Default(0) int? id,
     @Default('') String? username,
     @Default('') String? password,
     @Default('') String? name,
     @Default('') String? apellido,
     @Default('') String? telefono,
     @Default('') String? email,
     @Default('') String? fechaCreacion,
     @Default('') String? role,
     @Default('') String? token,
  }) = _UserLoginResponse;

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLoginResponseFromJson(json);
}
