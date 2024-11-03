// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloqueo_cuenta_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BloqueoCuentaRequest {
  String get passPhrase =>
      throw _privateConstructorUsedError; // Frase de paso para autenticación
  String get so => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BloqueoCuentaRequestCopyWith<BloqueoCuentaRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloqueoCuentaRequestCopyWith<$Res> {
  factory $BloqueoCuentaRequestCopyWith(BloqueoCuentaRequest value,
          $Res Function(BloqueoCuentaRequest) then) =
      _$BloqueoCuentaRequestCopyWithImpl<$Res, BloqueoCuentaRequest>;
  @useResult
  $Res call({String passPhrase, String so});
}

/// @nodoc
class _$BloqueoCuentaRequestCopyWithImpl<$Res,
        $Val extends BloqueoCuentaRequest>
    implements $BloqueoCuentaRequestCopyWith<$Res> {
  _$BloqueoCuentaRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passPhrase = null,
    Object? so = null,
  }) {
    return _then(_value.copyWith(
      passPhrase: null == passPhrase
          ? _value.passPhrase
          : passPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      so: null == so
          ? _value.so
          : so // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BloqueoCuentaRequestImplCopyWith<$Res>
    implements $BloqueoCuentaRequestCopyWith<$Res> {
  factory _$$BloqueoCuentaRequestImplCopyWith(_$BloqueoCuentaRequestImpl value,
          $Res Function(_$BloqueoCuentaRequestImpl) then) =
      __$$BloqueoCuentaRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String passPhrase, String so});
}

/// @nodoc
class __$$BloqueoCuentaRequestImplCopyWithImpl<$Res>
    extends _$BloqueoCuentaRequestCopyWithImpl<$Res, _$BloqueoCuentaRequestImpl>
    implements _$$BloqueoCuentaRequestImplCopyWith<$Res> {
  __$$BloqueoCuentaRequestImplCopyWithImpl(_$BloqueoCuentaRequestImpl _value,
      $Res Function(_$BloqueoCuentaRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passPhrase = null,
    Object? so = null,
  }) {
    return _then(_$BloqueoCuentaRequestImpl(
      passPhrase: null == passPhrase
          ? _value.passPhrase
          : passPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      so: null == so
          ? _value.so
          : so // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BloqueoCuentaRequestImpl implements _BloqueoCuentaRequest {
  const _$BloqueoCuentaRequestImpl(
      {required this.passPhrase, required this.so});

  @override
  final String passPhrase;
// Frase de paso para autenticación
  @override
  final String so;

  @override
  String toString() {
    return 'BloqueoCuentaRequest(passPhrase: $passPhrase, so: $so)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BloqueoCuentaRequestImpl &&
            (identical(other.passPhrase, passPhrase) ||
                other.passPhrase == passPhrase) &&
            (identical(other.so, so) || other.so == so));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passPhrase, so);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BloqueoCuentaRequestImplCopyWith<_$BloqueoCuentaRequestImpl>
      get copyWith =>
          __$$BloqueoCuentaRequestImplCopyWithImpl<_$BloqueoCuentaRequestImpl>(
              this, _$identity);
}

abstract class _BloqueoCuentaRequest implements BloqueoCuentaRequest {
  const factory _BloqueoCuentaRequest(
      {required final String passPhrase,
      required final String so}) = _$BloqueoCuentaRequestImpl;

  @override
  String get passPhrase;
  @override // Frase de paso para autenticación
  String get so;
  @override
  @JsonKey(ignore: true)
  _$$BloqueoCuentaRequestImplCopyWith<_$BloqueoCuentaRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
