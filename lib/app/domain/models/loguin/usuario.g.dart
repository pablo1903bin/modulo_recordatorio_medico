// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsuarioImpl _$$UsuarioImplFromJson(Map<String, dynamic> json) =>
    _$UsuarioImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      apellido: json['apellido'] as String?,
      telefono: json['telefono'] as String?,
      email: json['email'] as String?,
      fechaCreacion: json['fechaCreacion'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$UsuarioImplToJson(_$UsuarioImpl instance) =>
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
    };
