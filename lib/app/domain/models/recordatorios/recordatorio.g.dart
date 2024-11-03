// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recordatorio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordatorioImpl _$$RecordatorioImplFromJson(Map<String, dynamic> json) =>
    _$RecordatorioImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      user: (json['user'] as num?)?.toInt() ?? 0,
      nombreMedicamento: json['nombreMedicamento'] as String? ?? "",
      descripcion: json['descripcion'] as String? ?? "",
      dosis: json['dosis'] as String? ?? "",
      metodoAdministracion: json['metodoAdministracion'] as String? ?? "",
      frecuenciaUnidades: (json['frecuenciaUnidades'] as num?)?.toInt() ?? 0,
      frecuenciaIntervalo: json['frecuenciaIntervalo'] as String? ?? "",
      fechaInicio: json['fechaInicio'] as String? ?? "",
      horaInicio: json['horaInicio'] as String? ?? "",
      duracionTratamiento: json['duracionTratamiento'] as String? ?? "",
      estado: json['estado'] as String? ?? "",
      fechaCreacion: json['fechaCreacion'] as String? ?? "",
    );

Map<String, dynamic> _$$RecordatorioImplToJson(_$RecordatorioImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'nombreMedicamento': instance.nombreMedicamento,
      'descripcion': instance.descripcion,
      'dosis': instance.dosis,
      'metodoAdministracion': instance.metodoAdministracion,
      'frecuenciaUnidades': instance.frecuenciaUnidades,
      'frecuenciaIntervalo': instance.frecuenciaIntervalo,
      'fechaInicio': instance.fechaInicio,
      'horaInicio': instance.horaInicio,
      'duracionTratamiento': instance.duracionTratamiento,
      'estado': instance.estado,
      'fechaCreacion': instance.fechaCreacion,
    };
