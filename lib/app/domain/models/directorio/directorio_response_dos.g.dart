// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directorio_response_dos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DirectorioResponseDosImpl _$$DirectorioResponseDosImplFromJson(
        Map<String, dynamic> json) =>
    _$DirectorioResponseDosImpl(
      mii: (json['mii'] as num?)?.toInt() ?? 0,
      icA: json['icA'] as String?,
      nombre: json['n'] as String?,
      codigoRespuesta: json['cR'] as String?,
      ultimaTransaccion: json['llt'] as String?,
      sessionId: json['sessionId'] as String?,
      spei247: (json['spei247'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DirectorioResponseDosImplToJson(
        _$DirectorioResponseDosImpl instance) =>
    <String, dynamic>{
      'mii': instance.mii,
      'icA': instance.icA,
      'n': instance.nombre,
      'cR': instance.codigoRespuesta,
      'llt': instance.ultimaTransaccion,
      'sessionId': instance.sessionId,
      'spei247': instance.spei247,
    };
