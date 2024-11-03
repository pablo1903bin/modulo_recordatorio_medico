// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directorio_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DirectorioResponseImpl _$$DirectorioResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DirectorioResponseImpl(
      mii: (json['mii'] as num?)?.toInt() ?? 0,
      icA: json['icA'] as String? ?? "",
      n: json['n'] as String? ?? "",
      codigo: json['cR'] as String? ?? "",
      llt: json['llt'] as String? ?? "",
      sessionID: json['sessionId'] as String?,
      spei247: (json['spei247'] as num?)?.toInt() ?? 0,
      cs: (json['cs'] as List<dynamic>?)
              ?.map((e) => Contrato.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DirectorioResponseImplToJson(
        _$DirectorioResponseImpl instance) =>
    <String, dynamic>{
      'mii': instance.mii,
      'icA': instance.icA,
      'n': instance.n,
      'cR': instance.codigo,
      'llt': instance.llt,
      'sessionId': instance.sessionID,
      'spei247': instance.spei247,
      'cs': instance.cs,
    };

_$ContratoImpl _$$ContratoImplFromJson(Map<String, dynamic> json) =>
    _$ContratoImpl(
      clabe: json['clabe'] as String? ?? "",
      sV: json['sV'] as String? ?? "",
      svs: (json['svs'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      nC: json['nC'] as String? ?? "",
      iC: json['iC'] as String? ?? "",
      refNumContrato: json['refNumContrato'] as String? ?? "",
    );

Map<String, dynamic> _$$ContratoImplToJson(_$ContratoImpl instance) =>
    <String, dynamic>{
      'clabe': instance.clabe,
      'sV': instance.sV,
      'svs': instance.svs,
      'nC': instance.nC,
      'iC': instance.iC,
      'refNumContrato': instance.refNumContrato,
    };
