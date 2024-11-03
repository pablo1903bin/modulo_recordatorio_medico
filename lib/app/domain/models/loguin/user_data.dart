import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
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
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
