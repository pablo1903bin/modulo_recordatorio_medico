// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recordatorio_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecordatorioFailure {
  HttpRequestFailure get httpFailure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpRequestFailure httpFailure) httpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailure httpFailure)? httpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpRequestFailure httpFailure)? httpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordatorioFailure value) httpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordatorioFailure value)? httpFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordatorioFailure value)? httpFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecordatorioFailureCopyWith<RecordatorioFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordatorioFailureCopyWith<$Res> {
  factory $RecordatorioFailureCopyWith(
          RecordatorioFailure value, $Res Function(RecordatorioFailure) then) =
      _$RecordatorioFailureCopyWithImpl<$Res, RecordatorioFailure>;
  @useResult
  $Res call({HttpRequestFailure httpFailure});

  $HttpRequestFailureCopyWith<$Res> get httpFailure;
}

/// @nodoc
class _$RecordatorioFailureCopyWithImpl<$Res, $Val extends RecordatorioFailure>
    implements $RecordatorioFailureCopyWith<$Res> {
  _$RecordatorioFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? httpFailure = null,
  }) {
    return _then(_value.copyWith(
      httpFailure: null == httpFailure
          ? _value.httpFailure
          : httpFailure // ignore: cast_nullable_to_non_nullable
              as HttpRequestFailure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpRequestFailureCopyWith<$Res> get httpFailure {
    return $HttpRequestFailureCopyWith<$Res>(_value.httpFailure, (value) {
      return _then(_value.copyWith(httpFailure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordatorioFailureImplCopyWith<$Res>
    implements $RecordatorioFailureCopyWith<$Res> {
  factory _$$RecordatorioFailureImplCopyWith(_$RecordatorioFailureImpl value,
          $Res Function(_$RecordatorioFailureImpl) then) =
      __$$RecordatorioFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HttpRequestFailure httpFailure});

  @override
  $HttpRequestFailureCopyWith<$Res> get httpFailure;
}

/// @nodoc
class __$$RecordatorioFailureImplCopyWithImpl<$Res>
    extends _$RecordatorioFailureCopyWithImpl<$Res, _$RecordatorioFailureImpl>
    implements _$$RecordatorioFailureImplCopyWith<$Res> {
  __$$RecordatorioFailureImplCopyWithImpl(_$RecordatorioFailureImpl _value,
      $Res Function(_$RecordatorioFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? httpFailure = null,
  }) {
    return _then(_$RecordatorioFailureImpl(
      null == httpFailure
          ? _value.httpFailure
          : httpFailure // ignore: cast_nullable_to_non_nullable
              as HttpRequestFailure,
    ));
  }
}

/// @nodoc

class _$RecordatorioFailureImpl implements _RecordatorioFailure {
  const _$RecordatorioFailureImpl(this.httpFailure);

  @override
  final HttpRequestFailure httpFailure;

  @override
  String toString() {
    return 'RecordatorioFailure.httpFailure(httpFailure: $httpFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordatorioFailureImpl &&
            (identical(other.httpFailure, httpFailure) ||
                other.httpFailure == httpFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, httpFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordatorioFailureImplCopyWith<_$RecordatorioFailureImpl> get copyWith =>
      __$$RecordatorioFailureImplCopyWithImpl<_$RecordatorioFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HttpRequestFailure httpFailure) httpFailure,
  }) {
    return httpFailure(this.httpFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HttpRequestFailure httpFailure)? httpFailure,
  }) {
    return httpFailure?.call(this.httpFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HttpRequestFailure httpFailure)? httpFailure,
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
    required TResult Function(_RecordatorioFailure value) httpFailure,
  }) {
    return httpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordatorioFailure value)? httpFailure,
  }) {
    return httpFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordatorioFailure value)? httpFailure,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(this);
    }
    return orElse();
  }
}

abstract class _RecordatorioFailure implements RecordatorioFailure {
  const factory _RecordatorioFailure(final HttpRequestFailure httpFailure) =
      _$RecordatorioFailureImpl;

  @override
  HttpRequestFailure get httpFailure;
  @override
  @JsonKey(ignore: true)
  _$$RecordatorioFailureImplCopyWith<_$RecordatorioFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
