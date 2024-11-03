// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mmovil_v1_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MmovilV1Response _$MmovilV1ResponseFromJson(Map<String, dynamic> json) {
  return _MmovilV1Response.fromJson(json);
}

/// @nodoc
mixin _$MmovilV1Response {
  @JsonKey(name: "cR")
  String get codigo => throw _privateConstructorUsedError;
  @JsonKey(name: "m")
  String get mensaje => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionId")
  String? get sessionID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MmovilV1ResponseCopyWith<MmovilV1Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MmovilV1ResponseCopyWith<$Res> {
  factory $MmovilV1ResponseCopyWith(
          MmovilV1Response value, $Res Function(MmovilV1Response) then) =
      _$MmovilV1ResponseCopyWithImpl<$Res, MmovilV1Response>;
  @useResult
  $Res call(
      {@JsonKey(name: "cR") String codigo,
      @JsonKey(name: "m") String mensaje,
      @JsonKey(name: "sessionId") String? sessionID});
}

/// @nodoc
class _$MmovilV1ResponseCopyWithImpl<$Res, $Val extends MmovilV1Response>
    implements $MmovilV1ResponseCopyWith<$Res> {
  _$MmovilV1ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? mensaje = null,
    Object? sessionID = freezed,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      mensaje: null == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String,
      sessionID: freezed == sessionID
          ? _value.sessionID
          : sessionID // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MmovilV1ResponseImplCopyWith<$Res>
    implements $MmovilV1ResponseCopyWith<$Res> {
  factory _$$MmovilV1ResponseImplCopyWith(_$MmovilV1ResponseImpl value,
          $Res Function(_$MmovilV1ResponseImpl) then) =
      __$$MmovilV1ResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cR") String codigo,
      @JsonKey(name: "m") String mensaje,
      @JsonKey(name: "sessionId") String? sessionID});
}

/// @nodoc
class __$$MmovilV1ResponseImplCopyWithImpl<$Res>
    extends _$MmovilV1ResponseCopyWithImpl<$Res, _$MmovilV1ResponseImpl>
    implements _$$MmovilV1ResponseImplCopyWith<$Res> {
  __$$MmovilV1ResponseImplCopyWithImpl(_$MmovilV1ResponseImpl _value,
      $Res Function(_$MmovilV1ResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? mensaje = null,
    Object? sessionID = freezed,
  }) {
    return _then(_$MmovilV1ResponseImpl(
      null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      null == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == sessionID
          ? _value.sessionID
          : sessionID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MmovilV1ResponseImpl implements _MmovilV1Response {
  _$MmovilV1ResponseImpl(
      @JsonKey(name: "cR") this.codigo,
      @JsonKey(name: "m") this.mensaje,
      @JsonKey(name: "sessionId") this.sessionID);

  factory _$MmovilV1ResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MmovilV1ResponseImplFromJson(json);

  @override
  @JsonKey(name: "cR")
  final String codigo;
  @override
  @JsonKey(name: "m")
  final String mensaje;
  @override
  @JsonKey(name: "sessionId")
  final String? sessionID;

  @override
  String toString() {
    return 'MmovilV1Response(codigo: $codigo, mensaje: $mensaje, sessionID: $sessionID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MmovilV1ResponseImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje) &&
            (identical(other.sessionID, sessionID) ||
                other.sessionID == sessionID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, mensaje, sessionID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MmovilV1ResponseImplCopyWith<_$MmovilV1ResponseImpl> get copyWith =>
      __$$MmovilV1ResponseImplCopyWithImpl<_$MmovilV1ResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MmovilV1ResponseImplToJson(
      this,
    );
  }
}

abstract class _MmovilV1Response implements MmovilV1Response {
  factory _MmovilV1Response(
          @JsonKey(name: "cR") final String codigo,
          @JsonKey(name: "m") final String mensaje,
          @JsonKey(name: "sessionId") final String? sessionID) =
      _$MmovilV1ResponseImpl;

  factory _MmovilV1Response.fromJson(Map<String, dynamic> json) =
      _$MmovilV1ResponseImpl.fromJson;

  @override
  @JsonKey(name: "cR")
  String get codigo;
  @override
  @JsonKey(name: "m")
  String get mensaje;
  @override
  @JsonKey(name: "sessionId")
  String? get sessionID;
  @override
  @JsonKey(ignore: true)
  _$$MmovilV1ResponseImplCopyWith<_$MmovilV1ResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
