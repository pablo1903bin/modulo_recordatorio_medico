// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginUserFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpRequestFailure httpFailure) httpFailure,
    required TResult Function() invalidCredentials,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailure httpFailure)? httpFailure,
    TResult? Function()? invalidCredentials,
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpRequestFailure httpFailure)? httpFailure,
    TResult Function()? invalidCredentials,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserFailureHttpFailure value) httpFailure,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserFailureHttpFailure value)? httpFailure,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserFailureHttpFailure value)? httpFailure,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserFailureCopyWith<$Res> {
  factory $LoginUserFailureCopyWith(
          LoginUserFailure value, $Res Function(LoginUserFailure) then) =
      _$LoginUserFailureCopyWithImpl<$Res, LoginUserFailure>;
}

/// @nodoc
class _$LoginUserFailureCopyWithImpl<$Res, $Val extends LoginUserFailure>
    implements $LoginUserFailureCopyWith<$Res> {
  _$LoginUserFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginUserFailureHttpFailureImplCopyWith<$Res> {
  factory _$$LoginUserFailureHttpFailureImplCopyWith(
          _$LoginUserFailureHttpFailureImpl value,
          $Res Function(_$LoginUserFailureHttpFailureImpl) then) =
      __$$LoginUserFailureHttpFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HttpRequestFailure httpFailure});

  $HttpRequestFailureCopyWith<$Res> get httpFailure;
}

/// @nodoc
class __$$LoginUserFailureHttpFailureImplCopyWithImpl<$Res>
    extends _$LoginUserFailureCopyWithImpl<$Res,
        _$LoginUserFailureHttpFailureImpl>
    implements _$$LoginUserFailureHttpFailureImplCopyWith<$Res> {
  __$$LoginUserFailureHttpFailureImplCopyWithImpl(
      _$LoginUserFailureHttpFailureImpl _value,
      $Res Function(_$LoginUserFailureHttpFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? httpFailure = null,
  }) {
    return _then(_$LoginUserFailureHttpFailureImpl(
      null == httpFailure
          ? _value.httpFailure
          : httpFailure // ignore: cast_nullable_to_non_nullable
              as HttpRequestFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpRequestFailureCopyWith<$Res> get httpFailure {
    return $HttpRequestFailureCopyWith<$Res>(_value.httpFailure, (value) {
      return _then(_value.copyWith(httpFailure: value));
    });
  }
}

/// @nodoc

class _$LoginUserFailureHttpFailureImpl
    implements _LoginUserFailureHttpFailure {
  const _$LoginUserFailureHttpFailureImpl(this.httpFailure);

  @override
  final HttpRequestFailure httpFailure;

  @override
  String toString() {
    return 'LoginUserFailure.httpFailure(httpFailure: $httpFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserFailureHttpFailureImpl &&
            (identical(other.httpFailure, httpFailure) ||
                other.httpFailure == httpFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, httpFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserFailureHttpFailureImplCopyWith<_$LoginUserFailureHttpFailureImpl>
      get copyWith => __$$LoginUserFailureHttpFailureImplCopyWithImpl<
          _$LoginUserFailureHttpFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpRequestFailure httpFailure) httpFailure,
    required TResult Function() invalidCredentials,
    required TResult Function() unexpected,
  }) {
    return httpFailure(this.httpFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailure httpFailure)? httpFailure,
    TResult? Function()? invalidCredentials,
    TResult? Function()? unexpected,
  }) {
    return httpFailure?.call(this.httpFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpRequestFailure httpFailure)? httpFailure,
    TResult Function()? invalidCredentials,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(this.httpFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserFailureHttpFailure value) httpFailure,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return httpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserFailureHttpFailure value)? httpFailure,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return httpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserFailureHttpFailure value)? httpFailure,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginUserFailureHttpFailure implements LoginUserFailure {
  const factory _LoginUserFailureHttpFailure(
      final HttpRequestFailure httpFailure) = _$LoginUserFailureHttpFailureImpl;

  HttpRequestFailure get httpFailure;
  @JsonKey(ignore: true)
  _$$LoginUserFailureHttpFailureImplCopyWith<_$LoginUserFailureHttpFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidCredentialsImplCopyWith<$Res> {
  factory _$$InvalidCredentialsImplCopyWith(_$InvalidCredentialsImpl value,
          $Res Function(_$InvalidCredentialsImpl) then) =
      __$$InvalidCredentialsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidCredentialsImplCopyWithImpl<$Res>
    extends _$LoginUserFailureCopyWithImpl<$Res, _$InvalidCredentialsImpl>
    implements _$$InvalidCredentialsImplCopyWith<$Res> {
  __$$InvalidCredentialsImplCopyWithImpl(_$InvalidCredentialsImpl _value,
      $Res Function(_$InvalidCredentialsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidCredentialsImpl implements _InvalidCredentials {
  const _$InvalidCredentialsImpl();

  @override
  String toString() {
    return 'LoginUserFailure.invalidCredentials()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidCredentialsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpRequestFailure httpFailure) httpFailure,
    required TResult Function() invalidCredentials,
    required TResult Function() unexpected,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailure httpFailure)? httpFailure,
    TResult? Function()? invalidCredentials,
    TResult? Function()? unexpected,
  }) {
    return invalidCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpRequestFailure httpFailure)? httpFailure,
    TResult Function()? invalidCredentials,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserFailureHttpFailure value) httpFailure,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserFailureHttpFailure value)? httpFailure,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserFailureHttpFailure value)? httpFailure,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class _InvalidCredentials implements LoginUserFailure {
  const factory _InvalidCredentials() = _$InvalidCredentialsImpl;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$LoginUserFailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'LoginUserFailure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpRequestFailure httpFailure) httpFailure,
    required TResult Function() invalidCredentials,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailure httpFailure)? httpFailure,
    TResult? Function()? invalidCredentials,
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpRequestFailure httpFailure)? httpFailure,
    TResult Function()? invalidCredentials,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserFailureHttpFailure value) httpFailure,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserFailureHttpFailure value)? httpFailure,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserFailureHttpFailure value)? httpFailure,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements LoginUserFailure {
  const factory _Unexpected() = _$UnexpectedImpl;
}
