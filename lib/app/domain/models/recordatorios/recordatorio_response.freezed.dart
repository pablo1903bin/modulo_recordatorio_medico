// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recordatorio_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordatorioResponse _$RecordatorioResponseFromJson(Map<String, dynamic> json) {
  return _RecordatorioResponse.fromJson(json);
}

/// @nodoc
mixin _$RecordatorioResponse {
  String? get codigo => throw _privateConstructorUsedError;
  String? get mensaje => throw _privateConstructorUsedError;
  List<Recordatorio>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordatorioResponseCopyWith<RecordatorioResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordatorioResponseCopyWith<$Res> {
  factory $RecordatorioResponseCopyWith(RecordatorioResponse value,
          $Res Function(RecordatorioResponse) then) =
      _$RecordatorioResponseCopyWithImpl<$Res, RecordatorioResponse>;
  @useResult
  $Res call({String? codigo, String? mensaje, List<Recordatorio>? data});
}

/// @nodoc
class _$RecordatorioResponseCopyWithImpl<$Res,
        $Val extends RecordatorioResponse>
    implements $RecordatorioResponseCopyWith<$Res> {
  _$RecordatorioResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = freezed,
    Object? mensaje = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      codigo: freezed == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String?,
      mensaje: freezed == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Recordatorio>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordatorioResponseImplCopyWith<$Res>
    implements $RecordatorioResponseCopyWith<$Res> {
  factory _$$RecordatorioResponseImplCopyWith(_$RecordatorioResponseImpl value,
          $Res Function(_$RecordatorioResponseImpl) then) =
      __$$RecordatorioResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? codigo, String? mensaje, List<Recordatorio>? data});
}

/// @nodoc
class __$$RecordatorioResponseImplCopyWithImpl<$Res>
    extends _$RecordatorioResponseCopyWithImpl<$Res, _$RecordatorioResponseImpl>
    implements _$$RecordatorioResponseImplCopyWith<$Res> {
  __$$RecordatorioResponseImplCopyWithImpl(_$RecordatorioResponseImpl _value,
      $Res Function(_$RecordatorioResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = freezed,
    Object? mensaje = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RecordatorioResponseImpl(
      codigo: freezed == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String?,
      mensaje: freezed == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Recordatorio>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordatorioResponseImpl implements _RecordatorioResponse {
  _$RecordatorioResponseImpl(
      {this.codigo, this.mensaje, final List<Recordatorio>? data})
      : _data = data;

  factory _$RecordatorioResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordatorioResponseImplFromJson(json);

  @override
  final String? codigo;
  @override
  final String? mensaje;
  final List<Recordatorio>? _data;
  @override
  List<Recordatorio>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecordatorioResponse(codigo: $codigo, mensaje: $mensaje, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordatorioResponseImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, codigo, mensaje, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordatorioResponseImplCopyWith<_$RecordatorioResponseImpl>
      get copyWith =>
          __$$RecordatorioResponseImplCopyWithImpl<_$RecordatorioResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordatorioResponseImplToJson(
      this,
    );
  }
}

abstract class _RecordatorioResponse implements RecordatorioResponse {
  factory _RecordatorioResponse(
      {final String? codigo,
      final String? mensaje,
      final List<Recordatorio>? data}) = _$RecordatorioResponseImpl;

  factory _RecordatorioResponse.fromJson(Map<String, dynamic> json) =
      _$RecordatorioResponseImpl.fromJson;

  @override
  String? get codigo;
  @override
  String? get mensaje;
  @override
  List<Recordatorio>? get data;
  @override
  @JsonKey(ignore: true)
  _$$RecordatorioResponseImplCopyWith<_$RecordatorioResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
