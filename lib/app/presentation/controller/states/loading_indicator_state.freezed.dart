// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_indicator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadingIndicatorState {
  bool get cargando => throw _privateConstructorUsedError;
  bool get activo => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingIndicatorStateCopyWith<LoadingIndicatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingIndicatorStateCopyWith<$Res> {
  factory $LoadingIndicatorStateCopyWith(LoadingIndicatorState value,
          $Res Function(LoadingIndicatorState) then) =
      _$LoadingIndicatorStateCopyWithImpl<$Res, LoadingIndicatorState>;
  @useResult
  $Res call({bool cargando, bool activo, bool visible});
}

/// @nodoc
class _$LoadingIndicatorStateCopyWithImpl<$Res,
        $Val extends LoadingIndicatorState>
    implements $LoadingIndicatorStateCopyWith<$Res> {
  _$LoadingIndicatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cargando = null,
    Object? activo = null,
    Object? visible = null,
  }) {
    return _then(_value.copyWith(
      cargando: null == cargando
          ? _value.cargando
          : cargando // ignore: cast_nullable_to_non_nullable
              as bool,
      activo: null == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as bool,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingIndicatorStateImplCopyWith<$Res>
    implements $LoadingIndicatorStateCopyWith<$Res> {
  factory _$$LoadingIndicatorStateImplCopyWith(
          _$LoadingIndicatorStateImpl value,
          $Res Function(_$LoadingIndicatorStateImpl) then) =
      __$$LoadingIndicatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool cargando, bool activo, bool visible});
}

/// @nodoc
class __$$LoadingIndicatorStateImplCopyWithImpl<$Res>
    extends _$LoadingIndicatorStateCopyWithImpl<$Res,
        _$LoadingIndicatorStateImpl>
    implements _$$LoadingIndicatorStateImplCopyWith<$Res> {
  __$$LoadingIndicatorStateImplCopyWithImpl(_$LoadingIndicatorStateImpl _value,
      $Res Function(_$LoadingIndicatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cargando = null,
    Object? activo = null,
    Object? visible = null,
  }) {
    return _then(_$LoadingIndicatorStateImpl(
      cargando: null == cargando
          ? _value.cargando
          : cargando // ignore: cast_nullable_to_non_nullable
              as bool,
      activo: null == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as bool,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingIndicatorStateImpl implements _LoadingIndicatorState {
  _$LoadingIndicatorStateImpl(
      {this.cargando = false, this.activo = false, this.visible = false});

  @override
  @JsonKey()
  final bool cargando;
  @override
  @JsonKey()
  final bool activo;
  @override
  @JsonKey()
  final bool visible;

  @override
  String toString() {
    return 'LoadingIndicatorState(cargando: $cargando, activo: $activo, visible: $visible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingIndicatorStateImpl &&
            (identical(other.cargando, cargando) ||
                other.cargando == cargando) &&
            (identical(other.activo, activo) || other.activo == activo) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cargando, activo, visible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingIndicatorStateImplCopyWith<_$LoadingIndicatorStateImpl>
      get copyWith => __$$LoadingIndicatorStateImplCopyWithImpl<
          _$LoadingIndicatorStateImpl>(this, _$identity);
}

abstract class _LoadingIndicatorState implements LoadingIndicatorState {
  factory _LoadingIndicatorState(
      {final bool cargando,
      final bool activo,
      final bool visible}) = _$LoadingIndicatorStateImpl;

  @override
  bool get cargando;
  @override
  bool get activo;
  @override
  bool get visible;
  @override
  @JsonKey(ignore: true)
  _$$LoadingIndicatorStateImplCopyWith<_$LoadingIndicatorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
