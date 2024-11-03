// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boton_cargando_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BotonCargandoState {
  bool get cargando => throw _privateConstructorUsedError;
  bool get activo => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BotonCargandoStateCopyWith<BotonCargandoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotonCargandoStateCopyWith<$Res> {
  factory $BotonCargandoStateCopyWith(
          BotonCargandoState value, $Res Function(BotonCargandoState) then) =
      _$BotonCargandoStateCopyWithImpl<$Res, BotonCargandoState>;
  @useResult
  $Res call({bool cargando, bool activo, bool visible});
}

/// @nodoc
class _$BotonCargandoStateCopyWithImpl<$Res, $Val extends BotonCargandoState>
    implements $BotonCargandoStateCopyWith<$Res> {
  _$BotonCargandoStateCopyWithImpl(this._value, this._then);

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
abstract class _$$BotonCargandoStateImplCopyWith<$Res>
    implements $BotonCargandoStateCopyWith<$Res> {
  factory _$$BotonCargandoStateImplCopyWith(_$BotonCargandoStateImpl value,
          $Res Function(_$BotonCargandoStateImpl) then) =
      __$$BotonCargandoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool cargando, bool activo, bool visible});
}

/// @nodoc
class __$$BotonCargandoStateImplCopyWithImpl<$Res>
    extends _$BotonCargandoStateCopyWithImpl<$Res, _$BotonCargandoStateImpl>
    implements _$$BotonCargandoStateImplCopyWith<$Res> {
  __$$BotonCargandoStateImplCopyWithImpl(_$BotonCargandoStateImpl _value,
      $Res Function(_$BotonCargandoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cargando = null,
    Object? activo = null,
    Object? visible = null,
  }) {
    return _then(_$BotonCargandoStateImpl(
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

class _$BotonCargandoStateImpl implements _BotonCargandoState {
  _$BotonCargandoStateImpl(
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
    return 'BotonCargandoState(cargando: $cargando, activo: $activo, visible: $visible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotonCargandoStateImpl &&
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
  _$$BotonCargandoStateImplCopyWith<_$BotonCargandoStateImpl> get copyWith =>
      __$$BotonCargandoStateImplCopyWithImpl<_$BotonCargandoStateImpl>(
          this, _$identity);
}

abstract class _BotonCargandoState implements BotonCargandoState {
  factory _BotonCargandoState(
      {final bool cargando,
      final bool activo,
      final bool visible}) = _$BotonCargandoStateImpl;

  @override
  bool get cargando;
  @override
  bool get activo;
  @override
  bool get visible;
  @override
  @JsonKey(ignore: true)
  _$$BotonCargandoStateImplCopyWith<_$BotonCargandoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
