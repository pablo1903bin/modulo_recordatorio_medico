// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_loguin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLoginResponseImpl _$$UserLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLoginResponseImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
      name: json['name'] as String? ?? '',
      apellido: json['apellido'] as String? ?? '',
      telefono: json['telefono'] as String? ?? '',
      email: json['email'] as String? ?? '',
      fechaCreacion: json['fechaCreacion'] as String? ?? '',
      role: json['role'] as String? ?? '',
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$UserLoginResponseImplToJson(
        _$UserLoginResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'apellido': instance.apellido,
      'telefono': instance.telefono,
      'email': instance.email,
      'fechaCreacion': instance.fechaCreacion,
      'role': instance.role,
      'token': instance.token,
    };
