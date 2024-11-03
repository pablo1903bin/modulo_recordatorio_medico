// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mmovil_v1_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MmovilV1ResponseImpl _$$MmovilV1ResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MmovilV1ResponseImpl(
      json['cR'] as String,
      json['m'] as String,
      json['sessionId'] as String?,
    );

Map<String, dynamic> _$$MmovilV1ResponseImplToJson(
        _$MmovilV1ResponseImpl instance) =>
    <String, dynamic>{
      'cR': instance.codigo,
      'm': instance.mensaje,
      'sessionId': instance.sessionID,
    };
