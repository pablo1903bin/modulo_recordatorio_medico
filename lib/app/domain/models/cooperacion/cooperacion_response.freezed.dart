// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cooperacion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CooperacionResponse _$CooperacionResponseFromJson(Map<String, dynamic> json) {
  return _CooperacionResponse.fromJson(json);
}

/// @nodoc
mixin _$CooperacionResponse {
  int get id => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  @JsonKey(name: 'monto_objetivo')
  double get montoObjetivo => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_inicio')
  DateTime get fechaInicio => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_fin')
  DateTime get fechaFin => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_creacion')
  DateTime get fechaCreacion => throw _privateConstructorUsedError;
  String get estado => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CooperacionResponseCopyWith<CooperacionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CooperacionResponseCopyWith<$Res> {
  factory $CooperacionResponseCopyWith(
          CooperacionResponse value, $Res Function(CooperacionResponse) then) =
      _$CooperacionResponseCopyWithImpl<$Res, CooperacionResponse>;
  @useResult
  $Res call(
      {int id,
      String nombre,
      String descripcion,
      @JsonKey(name: 'monto_objetivo') double montoObjetivo,
      @JsonKey(name: 'fecha_inicio') DateTime fechaInicio,
      @JsonKey(name: 'fecha_fin') DateTime fechaFin,
      @JsonKey(name: 'fecha_creacion') DateTime fechaCreacion,
      String estado,
      @JsonKey(name: 'created_by') int createdBy});
}

/// @nodoc
class _$CooperacionResponseCopyWithImpl<$Res, $Val extends CooperacionResponse>
    implements $CooperacionResponseCopyWith<$Res> {
  _$CooperacionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? descripcion = null,
    Object? montoObjetivo = null,
    Object? fechaInicio = null,
    Object? fechaFin = null,
    Object? fechaCreacion = null,
    Object? estado = null,
    Object? createdBy = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      montoObjetivo: null == montoObjetivo
          ? _value.montoObjetivo
          : montoObjetivo // ignore: cast_nullable_to_non_nullable
              as double,
      fechaInicio: null == fechaInicio
          ? _value.fechaInicio
          : fechaInicio // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaFin: null == fechaFin
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaCreacion: null == fechaCreacion
          ? _value.fechaCreacion
          : fechaCreacion // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CooperacionResponseImplCopyWith<$Res>
    implements $CooperacionResponseCopyWith<$Res> {
  factory _$$CooperacionResponseImplCopyWith(_$CooperacionResponseImpl value,
          $Res Function(_$CooperacionResponseImpl) then) =
      __$$CooperacionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nombre,
      String descripcion,
      @JsonKey(name: 'monto_objetivo') double montoObjetivo,
      @JsonKey(name: 'fecha_inicio') DateTime fechaInicio,
      @JsonKey(name: 'fecha_fin') DateTime fechaFin,
      @JsonKey(name: 'fecha_creacion') DateTime fechaCreacion,
      String estado,
      @JsonKey(name: 'created_by') int createdBy});
}

/// @nodoc
class __$$CooperacionResponseImplCopyWithImpl<$Res>
    extends _$CooperacionResponseCopyWithImpl<$Res, _$CooperacionResponseImpl>
    implements _$$CooperacionResponseImplCopyWith<$Res> {
  __$$CooperacionResponseImplCopyWithImpl(_$CooperacionResponseImpl _value,
      $Res Function(_$CooperacionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? descripcion = null,
    Object? montoObjetivo = null,
    Object? fechaInicio = null,
    Object? fechaFin = null,
    Object? fechaCreacion = null,
    Object? estado = null,
    Object? createdBy = null,
  }) {
    return _then(_$CooperacionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      montoObjetivo: null == montoObjetivo
          ? _value.montoObjetivo
          : montoObjetivo // ignore: cast_nullable_to_non_nullable
              as double,
      fechaInicio: null == fechaInicio
          ? _value.fechaInicio
          : fechaInicio // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaFin: null == fechaFin
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaCreacion: null == fechaCreacion
          ? _value.fechaCreacion
          : fechaCreacion // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CooperacionResponseImpl implements _CooperacionResponse {
  const _$CooperacionResponseImpl(
      {required this.id,
      required this.nombre,
      required this.descripcion,
      @JsonKey(name: 'monto_objetivo') required this.montoObjetivo,
      @JsonKey(name: 'fecha_inicio') required this.fechaInicio,
      @JsonKey(name: 'fecha_fin') required this.fechaFin,
      @JsonKey(name: 'fecha_creacion') required this.fechaCreacion,
      required this.estado,
      @JsonKey(name: 'created_by') required this.createdBy});

  factory _$CooperacionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CooperacionResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String nombre;
  @override
  final String descripcion;
  @override
  @JsonKey(name: 'monto_objetivo')
  final double montoObjetivo;
  @override
  @JsonKey(name: 'fecha_inicio')
  final DateTime fechaInicio;
  @override
  @JsonKey(name: 'fecha_fin')
  final DateTime fechaFin;
  @override
  @JsonKey(name: 'fecha_creacion')
  final DateTime fechaCreacion;
  @override
  final String estado;
  @override
  @JsonKey(name: 'created_by')
  final int createdBy;

  @override
  String toString() {
    return 'CooperacionResponse(id: $id, nombre: $nombre, descripcion: $descripcion, montoObjetivo: $montoObjetivo, fechaInicio: $fechaInicio, fechaFin: $fechaFin, fechaCreacion: $fechaCreacion, estado: $estado, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CooperacionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.montoObjetivo, montoObjetivo) ||
                other.montoObjetivo == montoObjetivo) &&
            (identical(other.fechaInicio, fechaInicio) ||
                other.fechaInicio == fechaInicio) &&
            (identical(other.fechaFin, fechaFin) ||
                other.fechaFin == fechaFin) &&
            (identical(other.fechaCreacion, fechaCreacion) ||
                other.fechaCreacion == fechaCreacion) &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nombre, descripcion,
      montoObjetivo, fechaInicio, fechaFin, fechaCreacion, estado, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CooperacionResponseImplCopyWith<_$CooperacionResponseImpl> get copyWith =>
      __$$CooperacionResponseImplCopyWithImpl<_$CooperacionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CooperacionResponseImplToJson(
      this,
    );
  }
}

abstract class _CooperacionResponse implements CooperacionResponse {
  const factory _CooperacionResponse(
      {required final int id,
      required final String nombre,
      required final String descripcion,
      @JsonKey(name: 'monto_objetivo') required final double montoObjetivo,
      @JsonKey(name: 'fecha_inicio') required final DateTime fechaInicio,
      @JsonKey(name: 'fecha_fin') required final DateTime fechaFin,
      @JsonKey(name: 'fecha_creacion') required final DateTime fechaCreacion,
      required final String estado,
      @JsonKey(name: 'created_by')
      required final int createdBy}) = _$CooperacionResponseImpl;

  factory _CooperacionResponse.fromJson(Map<String, dynamic> json) =
      _$CooperacionResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get nombre;
  @override
  String get descripcion;
  @override
  @JsonKey(name: 'monto_objetivo')
  double get montoObjetivo;
  @override
  @JsonKey(name: 'fecha_inicio')
  DateTime get fechaInicio;
  @override
  @JsonKey(name: 'fecha_fin')
  DateTime get fechaFin;
  @override
  @JsonKey(name: 'fecha_creacion')
  DateTime get fechaCreacion;
  @override
  String get estado;
  @override
  @JsonKey(name: 'created_by')
  int get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$CooperacionResponseImplCopyWith<_$CooperacionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
