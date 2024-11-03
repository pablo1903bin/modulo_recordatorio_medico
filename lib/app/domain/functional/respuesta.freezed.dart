// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'respuesta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Respuesta<L, R> {
  Object? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L value) error,
    required TResult Function(R value) exito,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(L value)? error,
    TResult? Function(R value)? exito,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L value)? error,
    TResult Function(R value)? exito,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error<L, R> value) error,
    required TResult Function(Exito<L, R> value) exito,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Error<L, R> value)? error,
    TResult? Function(Exito<L, R> value)? exito,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Exito<L, R> value)? exito,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespuestaCopyWith<L, R, $Res> {
  factory $RespuestaCopyWith(
          Respuesta<L, R> value, $Res Function(Respuesta<L, R>) then) =
      _$RespuestaCopyWithImpl<L, R, $Res, Respuesta<L, R>>;
}

/// @nodoc
class _$RespuestaCopyWithImpl<L, R, $Res, $Val extends Respuesta<L, R>>
    implements $RespuestaCopyWith<L, R, $Res> {
  _$RespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<L, R, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<L, R> value, $Res Function(_$ErrorImpl<L, R>) then) =
      __$$ErrorImplCopyWithImpl<L, R, $Res>;
  @useResult
  $Res call({L value});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<L, R, $Res>
    extends _$RespuestaCopyWithImpl<L, R, $Res, _$ErrorImpl<L, R>>
    implements _$$ErrorImplCopyWith<L, R, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<L, R> _value, $Res Function(_$ErrorImpl<L, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ErrorImpl<L, R>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as L,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<L, R> implements Error<L, R> {
  _$ErrorImpl(this.value);

  @override
  final L value;

  @override
  String toString() {
    return 'Respuesta<$L, $R>.error(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<L, R> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<L, R, _$ErrorImpl<L, R>> get copyWith =>
      __$$ErrorImplCopyWithImpl<L, R, _$ErrorImpl<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L value) error,
    required TResult Function(R value) exito,
  }) {
    return error(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(L value)? error,
    TResult? Function(R value)? exito,
  }) {
    return error?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L value)? error,
    TResult Function(R value)? exito,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error<L, R> value) error,
    required TResult Function(Exito<L, R> value) exito,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Error<L, R> value)? error,
    TResult? Function(Exito<L, R> value)? exito,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Exito<L, R> value)? exito,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<L, R> implements Respuesta<L, R> {
  factory Error(final L value) = _$ErrorImpl<L, R>;

  @override
  L get value;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<L, R, _$ErrorImpl<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExitoImplCopyWith<L, R, $Res> {
  factory _$$ExitoImplCopyWith(
          _$ExitoImpl<L, R> value, $Res Function(_$ExitoImpl<L, R>) then) =
      __$$ExitoImplCopyWithImpl<L, R, $Res>;
  @useResult
  $Res call({R value});
}

/// @nodoc
class __$$ExitoImplCopyWithImpl<L, R, $Res>
    extends _$RespuestaCopyWithImpl<L, R, $Res, _$ExitoImpl<L, R>>
    implements _$$ExitoImplCopyWith<L, R, $Res> {
  __$$ExitoImplCopyWithImpl(
      _$ExitoImpl<L, R> _value, $Res Function(_$ExitoImpl<L, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ExitoImpl<L, R>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$ExitoImpl<L, R> implements Exito<L, R> {
  _$ExitoImpl(this.value);

  @override
  final R value;

  @override
  String toString() {
    return 'Respuesta<$L, $R>.exito(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitoImpl<L, R> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExitoImplCopyWith<L, R, _$ExitoImpl<L, R>> get copyWith =>
      __$$ExitoImplCopyWithImpl<L, R, _$ExitoImpl<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L value) error,
    required TResult Function(R value) exito,
  }) {
    return exito(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(L value)? error,
    TResult? Function(R value)? exito,
  }) {
    return exito?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L value)? error,
    TResult Function(R value)? exito,
    required TResult orElse(),
  }) {
    if (exito != null) {
      return exito(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error<L, R> value) error,
    required TResult Function(Exito<L, R> value) exito,
  }) {
    return exito(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Error<L, R> value)? error,
    TResult? Function(Exito<L, R> value)? exito,
  }) {
    return exito?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Exito<L, R> value)? exito,
    required TResult orElse(),
  }) {
    if (exito != null) {
      return exito(this);
    }
    return orElse();
  }
}

abstract class Exito<L, R> implements Respuesta<L, R> {
  factory Exito(final R value) = _$ExitoImpl<L, R>;

  @override
  R get value;
  @JsonKey(ignore: true)
  _$$ExitoImplCopyWith<L, R, _$ExitoImpl<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}
