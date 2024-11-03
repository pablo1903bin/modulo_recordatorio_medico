// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Model _$ModelFromJson(Map<String, dynamic> json) {
  return _Model.fromJson(json);
}

/// @nodoc
mixin _$Model {
  String? get label =>
      throw _privateConstructorUsedError; // Etiqueta de la alarma (opcional)
  String? get dateTime =>
      throw _privateConstructorUsedError; // Fecha y hora de la alarma en formato String (opcional)
  bool get check =>
      throw _privateConstructorUsedError; // Estado de la alarma (activa o inactiva)
  String? get when =>
      throw _privateConstructorUsedError; // Frecuencia o momento de la alarma (opcional)
  int? get id =>
      throw _privateConstructorUsedError; // ID único de la alarma (opcional)
  int? get milliseconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelCopyWith<Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCopyWith<$Res> {
  factory $ModelCopyWith(Model value, $Res Function(Model) then) =
      _$ModelCopyWithImpl<$Res, Model>;
  @useResult
  $Res call(
      {String? label,
      String? dateTime,
      bool check,
      String? when,
      int? id,
      int? milliseconds});
}

/// @nodoc
class _$ModelCopyWithImpl<$Res, $Val extends Model>
    implements $ModelCopyWith<$Res> {
  _$ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? dateTime = freezed,
    Object? check = null,
    Object? when = freezed,
    Object? id = freezed,
    Object? milliseconds = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
      when: freezed == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      milliseconds: freezed == milliseconds
          ? _value.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelImplCopyWith<$Res> implements $ModelCopyWith<$Res> {
  factory _$$ModelImplCopyWith(
          _$ModelImpl value, $Res Function(_$ModelImpl) then) =
      __$$ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? label,
      String? dateTime,
      bool check,
      String? when,
      int? id,
      int? milliseconds});
}

/// @nodoc
class __$$ModelImplCopyWithImpl<$Res>
    extends _$ModelCopyWithImpl<$Res, _$ModelImpl>
    implements _$$ModelImplCopyWith<$Res> {
  __$$ModelImplCopyWithImpl(
      _$ModelImpl _value, $Res Function(_$ModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? dateTime = freezed,
    Object? check = null,
    Object? when = freezed,
    Object? id = freezed,
    Object? milliseconds = freezed,
  }) {
    return _then(_$ModelImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
      when: freezed == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      milliseconds: freezed == milliseconds
          ? _value.milliseconds
          : milliseconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelImpl implements _Model {
  const _$ModelImpl(
      {this.label,
      this.dateTime,
      required this.check,
      this.when,
      this.id,
      this.milliseconds});

  factory _$ModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelImplFromJson(json);

  @override
  final String? label;
// Etiqueta de la alarma (opcional)
  @override
  final String? dateTime;
// Fecha y hora de la alarma en formato String (opcional)
  @override
  final bool check;
// Estado de la alarma (activa o inactiva)
  @override
  final String? when;
// Frecuencia o momento de la alarma (opcional)
  @override
  final int? id;
// ID único de la alarma (opcional)
  @override
  final int? milliseconds;

  @override
  String toString() {
    return 'Model(label: $label, dateTime: $dateTime, check: $check, when: $when, id: $id, milliseconds: $milliseconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.when, when) || other.when == when) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.milliseconds, milliseconds) ||
                other.milliseconds == milliseconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, label, dateTime, check, when, id, milliseconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelImplCopyWith<_$ModelImpl> get copyWith =>
      __$$ModelImplCopyWithImpl<_$ModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelImplToJson(
      this,
    );
  }
}

abstract class _Model implements Model {
  const factory _Model(
      {final String? label,
      final String? dateTime,
      required final bool check,
      final String? when,
      final int? id,
      final int? milliseconds}) = _$ModelImpl;

  factory _Model.fromJson(Map<String, dynamic> json) = _$ModelImpl.fromJson;

  @override
  String? get label;
  @override // Etiqueta de la alarma (opcional)
  String? get dateTime;
  @override // Fecha y hora de la alarma en formato String (opcional)
  bool get check;
  @override // Estado de la alarma (activa o inactiva)
  String? get when;
  @override // Frecuencia o momento de la alarma (opcional)
  int? get id;
  @override // ID único de la alarma (opcional)
  int? get milliseconds;
  @override
  @JsonKey(ignore: true)
  _$$ModelImplCopyWith<_$ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
