// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recordatorio_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordatorioResponseImpl _$$RecordatorioResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordatorioResponseImpl(
      codigo: json['codigo'] as String?,
      mensaje: json['mensaje'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Recordatorio.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecordatorioResponseImplToJson(
        _$RecordatorioResponseImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'mensaje': instance.mensaje,
      'data': instance.data,
    };
