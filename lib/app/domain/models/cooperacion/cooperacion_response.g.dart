// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooperacion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CooperacionResponseImpl _$$CooperacionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CooperacionResponseImpl(
      id: (json['id'] as num).toInt(),
      nombre: json['nombre'] as String,
      descripcion: json['descripcion'] as String,
      montoObjetivo: (json['monto_objetivo'] as num).toDouble(),
      fechaInicio: DateTime.parse(json['fecha_inicio'] as String),
      fechaFin: DateTime.parse(json['fecha_fin'] as String),
      fechaCreacion: DateTime.parse(json['fecha_creacion'] as String),
      estado: json['estado'] as String,
      createdBy: (json['created_by'] as num).toInt(),
    );

Map<String, dynamic> _$$CooperacionResponseImplToJson(
        _$CooperacionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
      'monto_objetivo': instance.montoObjetivo,
      'fecha_inicio': instance.fechaInicio.toIso8601String(),
      'fecha_fin': instance.fechaFin.toIso8601String(),
      'fecha_creacion': instance.fechaCreacion.toIso8601String(),
      'estado': instance.estado,
      'created_by': instance.createdBy,
    };
