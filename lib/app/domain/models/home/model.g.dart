// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelImpl _$$ModelImplFromJson(Map<String, dynamic> json) => _$ModelImpl(
      label: json['label'] as String?,
      dateTime: json['dateTime'] as String?,
      check: json['check'] as bool,
      when: json['when'] as String?,
      id: (json['id'] as num?)?.toInt(),
      milliseconds: (json['milliseconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ModelImplToJson(_$ModelImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'dateTime': instance.dateTime,
      'check': instance.check,
      'when': instance.when,
      'id': instance.id,
      'milliseconds': instance.milliseconds,
    };
