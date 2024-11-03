// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directorio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DirectorioState {
  DirectorioResponse? get resultadoDirectorio =>
      throw _privateConstructorUsedError;
  DirectorioResponseNumeros? get resultadoServicioNumeros =>
      throw _privateConstructorUsedError;
  Map<int, DirectorioResponseNumeros> get contratosSolicitados =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectorioStateCopyWith<DirectorioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectorioStateCopyWith<$Res> {
  factory $DirectorioStateCopyWith(
          DirectorioState value, $Res Function(DirectorioState) then) =
      _$DirectorioStateCopyWithImpl<$Res, DirectorioState>;
  @useResult
  $Res call(
      {DirectorioResponse? resultadoDirectorio,
      DirectorioResponseNumeros? resultadoServicioNumeros,
      Map<int, DirectorioResponseNumeros> contratosSolicitados});

  $DirectorioResponseCopyWith<$Res>? get resultadoDirectorio;
  $DirectorioResponseNumerosCopyWith<$Res>? get resultadoServicioNumeros;
}

/// @nodoc
class _$DirectorioStateCopyWithImpl<$Res, $Val extends DirectorioState>
    implements $DirectorioStateCopyWith<$Res> {
  _$DirectorioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultadoDirectorio = freezed,
    Object? resultadoServicioNumeros = freezed,
    Object? contratosSolicitados = null,
  }) {
    return _then(_value.copyWith(
      resultadoDirectorio: freezed == resultadoDirectorio
          ? _value.resultadoDirectorio
          : resultadoDirectorio // ignore: cast_nullable_to_non_nullable
              as DirectorioResponse?,
      resultadoServicioNumeros: freezed == resultadoServicioNumeros
          ? _value.resultadoServicioNumeros
          : resultadoServicioNumeros // ignore: cast_nullable_to_non_nullable
              as DirectorioResponseNumeros?,
      contratosSolicitados: null == contratosSolicitados
          ? _value.contratosSolicitados
          : contratosSolicitados // ignore: cast_nullable_to_non_nullable
              as Map<int, DirectorioResponseNumeros>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DirectorioResponseCopyWith<$Res>? get resultadoDirectorio {
    if (_value.resultadoDirectorio == null) {
      return null;
    }

    return $DirectorioResponseCopyWith<$Res>(_value.resultadoDirectorio!,
        (value) {
      return _then(_value.copyWith(resultadoDirectorio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DirectorioResponseNumerosCopyWith<$Res>? get resultadoServicioNumeros {
    if (_value.resultadoServicioNumeros == null) {
      return null;
    }

    return $DirectorioResponseNumerosCopyWith<$Res>(
        _value.resultadoServicioNumeros!, (value) {
      return _then(_value.copyWith(resultadoServicioNumeros: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DirectorioStateImplCopyWith<$Res>
    implements $DirectorioStateCopyWith<$Res> {
  factory _$$DirectorioStateImplCopyWith(_$DirectorioStateImpl value,
          $Res Function(_$DirectorioStateImpl) then) =
      __$$DirectorioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DirectorioResponse? resultadoDirectorio,
      DirectorioResponseNumeros? resultadoServicioNumeros,
      Map<int, DirectorioResponseNumeros> contratosSolicitados});

  @override
  $DirectorioResponseCopyWith<$Res>? get resultadoDirectorio;
  @override
  $DirectorioResponseNumerosCopyWith<$Res>? get resultadoServicioNumeros;
}

/// @nodoc
class __$$DirectorioStateImplCopyWithImpl<$Res>
    extends _$DirectorioStateCopyWithImpl<$Res, _$DirectorioStateImpl>
    implements _$$DirectorioStateImplCopyWith<$Res> {
  __$$DirectorioStateImplCopyWithImpl(
      _$DirectorioStateImpl _value, $Res Function(_$DirectorioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultadoDirectorio = freezed,
    Object? resultadoServicioNumeros = freezed,
    Object? contratosSolicitados = null,
  }) {
    return _then(_$DirectorioStateImpl(
      resultadoDirectorio: freezed == resultadoDirectorio
          ? _value.resultadoDirectorio
          : resultadoDirectorio // ignore: cast_nullable_to_non_nullable
              as DirectorioResponse?,
      resultadoServicioNumeros: freezed == resultadoServicioNumeros
          ? _value.resultadoServicioNumeros
          : resultadoServicioNumeros // ignore: cast_nullable_to_non_nullable
              as DirectorioResponseNumeros?,
      contratosSolicitados: null == contratosSolicitados
          ? _value._contratosSolicitados
          : contratosSolicitados // ignore: cast_nullable_to_non_nullable
              as Map<int, DirectorioResponseNumeros>,
    ));
  }
}

/// @nodoc

class _$DirectorioStateImpl implements _DirectorioState {
  const _$DirectorioStateImpl(
      {this.resultadoDirectorio,
      this.resultadoServicioNumeros,
      final Map<int, DirectorioResponseNumeros> contratosSolicitados =
          const {}})
      : _contratosSolicitados = contratosSolicitados;

  @override
  final DirectorioResponse? resultadoDirectorio;
  @override
  final DirectorioResponseNumeros? resultadoServicioNumeros;
  final Map<int, DirectorioResponseNumeros> _contratosSolicitados;
  @override
  @JsonKey()
  Map<int, DirectorioResponseNumeros> get contratosSolicitados {
    if (_contratosSolicitados is EqualUnmodifiableMapView)
      return _contratosSolicitados;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_contratosSolicitados);
  }

  @override
  String toString() {
    return 'DirectorioState(resultadoDirectorio: $resultadoDirectorio, resultadoServicioNumeros: $resultadoServicioNumeros, contratosSolicitados: $contratosSolicitados)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectorioStateImpl &&
            (identical(other.resultadoDirectorio, resultadoDirectorio) ||
                other.resultadoDirectorio == resultadoDirectorio) &&
            (identical(
                    other.resultadoServicioNumeros, resultadoServicioNumeros) ||
                other.resultadoServicioNumeros == resultadoServicioNumeros) &&
            const DeepCollectionEquality()
                .equals(other._contratosSolicitados, _contratosSolicitados));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      resultadoDirectorio,
      resultadoServicioNumeros,
      const DeepCollectionEquality().hash(_contratosSolicitados));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectorioStateImplCopyWith<_$DirectorioStateImpl> get copyWith =>
      __$$DirectorioStateImplCopyWithImpl<_$DirectorioStateImpl>(
          this, _$identity);
}

abstract class _DirectorioState implements DirectorioState {
  const factory _DirectorioState(
          {final DirectorioResponse? resultadoDirectorio,
          final DirectorioResponseNumeros? resultadoServicioNumeros,
          final Map<int, DirectorioResponseNumeros> contratosSolicitados}) =
      _$DirectorioStateImpl;

  @override
  DirectorioResponse? get resultadoDirectorio;
  @override
  DirectorioResponseNumeros? get resultadoServicioNumeros;
  @override
  Map<int, DirectorioResponseNumeros> get contratosSolicitados;
  @override
  @JsonKey(ignore: true)
  _$$DirectorioStateImplCopyWith<_$DirectorioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
