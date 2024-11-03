// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directorio_response_numeros.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DirectorioResponseNumerosImpl _$$DirectorioResponseNumerosImplFromJson(
        Map<String, dynamic> json) =>
    _$DirectorioResponseNumerosImpl(
      ps: (json['ps'] as List<dynamic>?)
              ?.map((e) => Servicio.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Servicio>[],
      sessionID: json['sessionID'] as String?,
      cR: json['cR'] as String? ?? "",
    );

Map<String, dynamic> _$$DirectorioResponseNumerosImplToJson(
        _$DirectorioResponseNumerosImpl instance) =>
    <String, dynamic>{
      'ps': instance.ps,
      'sessionID': instance.sessionID,
      'cR': instance.cR,
    };

_$ServicioImpl _$$ServicioImplFromJson(Map<String, dynamic> json) =>
    _$ServicioImpl(
      n: json['n'] as String? ?? "",
      mrc: json['mrc'] as String? ?? "",
      mr: json['mr'] as String? ?? "",
    );

Map<String, dynamic> _$$ServicioImplToJson(_$ServicioImpl instance) =>
    <String, dynamic>{
      'n': instance.n,
      'mrc': instance.mrc,
      'mr': instance.mr,
    };
