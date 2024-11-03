// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HttpRequestFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() internalError,
    required TResult Function() badRequest,
    required TResult Function(int codigo, String mensaje) custom,
    required TResult Function(String codigo, String mensaje) businessError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
    TResult? Function()? internalError,
    TResult? Function()? badRequest,
    TResult? Function(int codigo, String mensaje)? custom,
    TResult? Function(String codigo, String mensaje)? businessError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? internalError,
    TResult Function()? badRequest,
    TResult Function(int codigo, String mensaje)? custom,
    TResult Function(String codigo, String mensaje)? businessError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Network value) network,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_CustomFailure value) custom,
    required TResult Function(_MMovilFailure value) businessError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_CustomFailure value)? custom,
    TResult? Function(_MMovilFailure value)? businessError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Network value)? network,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_CustomFailure value)? custom,
    TResult Function(_MMovilFailure value)? businessError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpRequestFailureCopyWith<$Res> {
  factory $HttpRequestFailureCopyWith(
          HttpRequestFailure value, $Res Function(HttpRequestFailure) then) =
      _$HttpRequestFailureCopyWithImpl<$Res, HttpRequestFailure>;
}

/// @nodoc
class _$HttpRequestFailureCopyWithImpl<$Res, $Val extends HttpRequestFailure>
    implements $HttpRequestFailureCopyWith<$Res> {
  _$HttpRequestFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  _$NotFoundImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() internalError,
    required TResult Function() badRequest,
    required TResult Function(int codigo, String mensaje) custom,
    required TResult Function(String codigo, String mensaje) businessError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
    TResult? Function()? internalError,
    TResult? Function()? badRequest,
    TResult? Function(int codigo, String mensaje)? custom,
    TResult? Function(String codigo, String mensaje)? businessError,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? internalError,
    TResult Function()? badRequest,
    TResult Function(int codigo, String mensaje)? custom,
    TResult Function(String codigo, String mensaje)? businessError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Network value) network,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_CustomFailure value) custom,
    required TResult Function(_MMovilFailure value) businessError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_CustomFailure value)? custom,
    TResult? Function(_MMovilFailure value)? businessError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Network value)? network,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_CustomFailure value)? custom,
    TResult Function(_MMovilFailure value)? businessError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements HttpRequestFailure {
  factory _NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$NetworkImplCopyWith<$Res> {
  factory _$$NetworkImplCopyWith(
          _$NetworkImpl value, $Res Function(_$NetworkImpl) then) =
      __$$NetworkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$NetworkImpl>
    implements _$$NetworkImplCopyWith<$Res> {
  __$$NetworkImplCopyWithImpl(
      _$NetworkImpl _value, $Res Function(_$NetworkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkImpl implements _Network {
  _$NetworkImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.network()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() internalError,
    required TResult Function() badRequest,
    required TResult Function(int codigo, String mensaje) custom,
    required TResult Function(String codigo, String mensaje) businessError,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
    TResult? Function()? internalError,
    TResult? Function()? badRequest,
    TResult? Function(int codigo, String mensaje)? custom,
    TResult? Function(String codigo, String mensaje)? businessError,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? internalError,
    TResult Function()? badRequest,
    TResult Function(int codigo, String mensaje)? custom,
    TResult Function(String codigo, String mensaje)? businessError,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Network value) network,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_CustomFailure value) custom,
    required TResult Function(_MMovilFailure value) businessError,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_CustomFailure value)? custom,
    TResult? Function(_MMovilFailure value)? businessError,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Network value)? network,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_CustomFailure value)? custom,
    TResult Function(_MMovilFailure value)? businessError,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements HttpRequestFailure {
  factory _Network() = _$NetworkImpl;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  _$UnauthorizedImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() internalError,
    required TResult Function() badRequest,
    required TResult Function(int codigo, String mensaje) custom,
    required TResult Function(String codigo, String mensaje) businessError,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
    TResult? Function()? internalError,
    TResult? Function()? badRequest,
    TResult? Function(int codigo, String mensaje)? custom,
    TResult? Function(String codigo, String mensaje)? businessError,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? internalError,
    TResult Function()? badRequest,
    TResult Function(int codigo, String mensaje)? custom,
    TResult Function(String codigo, String mensaje)? businessError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Network value) network,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_CustomFailure value) custom,
    required TResult Function(_MMovilFailure value) businessError,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_CustomFailure value)? custom,
    TResult? Function(_MMovilFailure value)? businessError,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Network value)? network,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_CustomFailure value)? custom,
    TResult Function(_MMovilFailure value)? businessError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements HttpRequestFailure {
  factory _Unauthorized() = _$UnauthorizedImpl;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  _$UnknownImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() internalError,
    required TResult Function() badRequest,
    required TResult Function(int codigo, String mensaje) custom,
    required TResult Function(String codigo, String mensaje) businessError,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
    TResult? Function()? internalError,
    TResult? Function()? badRequest,
    TResult? Function(int codigo, String mensaje)? custom,
    TResult? Function(String codigo, String mensaje)? businessError,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? internalError,
    TResult Function()? badRequest,
    TResult Function(int codigo, String mensaje)? custom,
    TResult Function(String codigo, String mensaje)? businessError,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Network value) network,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_CustomFailure value) custom,
    required TResult Function(_MMovilFailure value) businessError,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_CustomFailure value)? custom,
    TResult? Function(_MMovilFailure value)? businessError,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Network value)? network,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_CustomFailure value)? custom,
    TResult Function(_MMovilFailure value)? businessError,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements HttpRequestFailure {
  factory _Unknown() = _$UnknownImpl;
}

/// @nodoc
abstract class _$$InternalErrorImplCopyWith<$Res> {
  factory _$$InternalErrorImplCopyWith(
          _$InternalErrorImpl value, $Res Function(_$InternalErrorImpl) then) =
      __$$InternalErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternalErrorImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$InternalErrorImpl>
    implements _$$InternalErrorImplCopyWith<$Res> {
  __$$InternalErrorImplCopyWithImpl(
      _$InternalErrorImpl _value, $Res Function(_$InternalErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InternalErrorImpl implements _InternalError {
  _$InternalErrorImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.internalError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InternalErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() internalError,
    required TResult Function() badRequest,
    required TResult Function(int codigo, String mensaje) custom,
    required TResult Function(String codigo, String mensaje) businessError,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
    TResult? Function()? internalError,
    TResult? Function()? badRequest,
    TResult? Function(int codigo, String mensaje)? custom,
    TResult? Function(String codigo, String mensaje)? businessError,
  }) {
    return internalError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? internalError,
    TResult Function()? badRequest,
    TResult Function(int codigo, String mensaje)? custom,
    TResult Function(String codigo, String mensaje)? businessError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Network value) network,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_CustomFailure value) custom,
    required TResult Function(_MMovilFailure value) businessError,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_CustomFailure value)? custom,
    TResult? Function(_MMovilFailure value)? businessError,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Network value)? network,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_CustomFailure value)? custom,
    TResult Function(_MMovilFailure value)? businessError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class _InternalError implements HttpRequestFailure {
  factory _InternalError() = _$InternalErrorImpl;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BadRequestImpl implements _BadRequest {
  _$BadRequestImpl();

  @override
  String toString() {
    return 'HttpRequestFailure.badRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() internalError,
    required TResult Function() badRequest,
    required TResult Function(int codigo, String mensaje) custom,
    required TResult Function(String codigo, String mensaje) businessError,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
    TResult? Function()? internalError,
    TResult? Function()? badRequest,
    TResult? Function(int codigo, String mensaje)? custom,
    TResult? Function(String codigo, String mensaje)? businessError,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? internalError,
    TResult Function()? badRequest,
    TResult Function(int codigo, String mensaje)? custom,
    TResult Function(String codigo, String mensaje)? businessError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Network value) network,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_CustomFailure value) custom,
    required TResult Function(_MMovilFailure value) businessError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_CustomFailure value)? custom,
    TResult? Function(_MMovilFailure value)? businessError,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Network value)? network,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_CustomFailure value)? custom,
    TResult Function(_MMovilFailure value)? businessError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements HttpRequestFailure {
  factory _BadRequest() = _$BadRequestImpl;
}

/// @nodoc
abstract class _$$CustomFailureImplCopyWith<$Res> {
  factory _$$CustomFailureImplCopyWith(
          _$CustomFailureImpl value, $Res Function(_$CustomFailureImpl) then) =
      __$$CustomFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int codigo, String mensaje});
}

/// @nodoc
class __$$CustomFailureImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$CustomFailureImpl>
    implements _$$CustomFailureImplCopyWith<$Res> {
  __$$CustomFailureImplCopyWithImpl(
      _$CustomFailureImpl _value, $Res Function(_$CustomFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? mensaje = null,
  }) {
    return _then(_$CustomFailureImpl(
      null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as int,
      null == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomFailureImpl implements _CustomFailure {
  _$CustomFailureImpl(this.codigo, this.mensaje);

  @override
  final int codigo;
  @override
  final String mensaje;

  @override
  String toString() {
    return 'HttpRequestFailure.custom(codigo: $codigo, mensaje: $mensaje)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFailureImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje));
  }

  @override
  int get hashCode => Object.hash(runtimeType, codigo, mensaje);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFailureImplCopyWith<_$CustomFailureImpl> get copyWith =>
      __$$CustomFailureImplCopyWithImpl<_$CustomFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() internalError,
    required TResult Function() badRequest,
    required TResult Function(int codigo, String mensaje) custom,
    required TResult Function(String codigo, String mensaje) businessError,
  }) {
    return custom(codigo, mensaje);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
    TResult? Function()? internalError,
    TResult? Function()? badRequest,
    TResult? Function(int codigo, String mensaje)? custom,
    TResult? Function(String codigo, String mensaje)? businessError,
  }) {
    return custom?.call(codigo, mensaje);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? internalError,
    TResult Function()? badRequest,
    TResult Function(int codigo, String mensaje)? custom,
    TResult Function(String codigo, String mensaje)? businessError,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(codigo, mensaje);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Network value) network,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_CustomFailure value) custom,
    required TResult Function(_MMovilFailure value) businessError,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_CustomFailure value)? custom,
    TResult? Function(_MMovilFailure value)? businessError,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Network value)? network,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_CustomFailure value)? custom,
    TResult Function(_MMovilFailure value)? businessError,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class _CustomFailure implements HttpRequestFailure {
  factory _CustomFailure(final int codigo, final String mensaje) =
      _$CustomFailureImpl;

  int get codigo;
  String get mensaje;
  @JsonKey(ignore: true)
  _$$CustomFailureImplCopyWith<_$CustomFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MMovilFailureImplCopyWith<$Res> {
  factory _$$MMovilFailureImplCopyWith(
          _$MMovilFailureImpl value, $Res Function(_$MMovilFailureImpl) then) =
      __$$MMovilFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String codigo, String mensaje});
}

/// @nodoc
class __$$MMovilFailureImplCopyWithImpl<$Res>
    extends _$HttpRequestFailureCopyWithImpl<$Res, _$MMovilFailureImpl>
    implements _$$MMovilFailureImplCopyWith<$Res> {
  __$$MMovilFailureImplCopyWithImpl(
      _$MMovilFailureImpl _value, $Res Function(_$MMovilFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? mensaje = null,
  }) {
    return _then(_$MMovilFailureImpl(
      null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      null == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MMovilFailureImpl implements _MMovilFailure {
  _$MMovilFailureImpl(this.codigo, this.mensaje);

  @override
  final String codigo;
  @override
  final String mensaje;

  @override
  String toString() {
    return 'HttpRequestFailure.businessError(codigo: $codigo, mensaje: $mensaje)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MMovilFailureImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje));
  }

  @override
  int get hashCode => Object.hash(runtimeType, codigo, mensaje);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MMovilFailureImplCopyWith<_$MMovilFailureImpl> get copyWith =>
      __$$MMovilFailureImplCopyWithImpl<_$MMovilFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function() network,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() internalError,
    required TResult Function() badRequest,
    required TResult Function(int codigo, String mensaje) custom,
    required TResult Function(String codigo, String mensaje) businessError,
  }) {
    return businessError(codigo, mensaje);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function()? network,
    TResult? Function()? unauthorized,
    TResult? Function()? unknown,
    TResult? Function()? internalError,
    TResult? Function()? badRequest,
    TResult? Function(int codigo, String mensaje)? custom,
    TResult? Function(String codigo, String mensaje)? businessError,
  }) {
    return businessError?.call(codigo, mensaje);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function()? network,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? internalError,
    TResult Function()? badRequest,
    TResult Function(int codigo, String mensaje)? custom,
    TResult Function(String codigo, String mensaje)? businessError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(codigo, mensaje);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Network value) network,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_CustomFailure value) custom,
    required TResult Function(_MMovilFailure value) businessError,
  }) {
    return businessError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_CustomFailure value)? custom,
    TResult? Function(_MMovilFailure value)? businessError,
  }) {
    return businessError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Network value)? network,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_CustomFailure value)? custom,
    TResult Function(_MMovilFailure value)? businessError,
    required TResult orElse(),
  }) {
    if (businessError != null) {
      return businessError(this);
    }
    return orElse();
  }
}

abstract class _MMovilFailure implements HttpRequestFailure {
  factory _MMovilFailure(final String codigo, final String mensaje) =
      _$MMovilFailureImpl;

  String get codigo;
  String get mensaje;
  @JsonKey(ignore: true)
  _$$MMovilFailureImplCopyWith<_$MMovilFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
