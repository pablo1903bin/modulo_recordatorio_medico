// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  BotonCargandoController? get botonController =>
      throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  RecordatorioResponse? get recordatorioResponse =>
      throw _privateConstructorUsedError;
  List<Model>? get listaAlarmas => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {BotonCargandoController? botonController,
      int? level,
      String? version,
      RecordatorioResponse? recordatorioResponse,
      List<Model>? listaAlarmas});

  $RecordatorioResponseCopyWith<$Res>? get recordatorioResponse;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botonController = freezed,
    Object? level = freezed,
    Object? version = freezed,
    Object? recordatorioResponse = freezed,
    Object? listaAlarmas = freezed,
  }) {
    return _then(_value.copyWith(
      botonController: freezed == botonController
          ? _value.botonController
          : botonController // ignore: cast_nullable_to_non_nullable
              as BotonCargandoController?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      recordatorioResponse: freezed == recordatorioResponse
          ? _value.recordatorioResponse
          : recordatorioResponse // ignore: cast_nullable_to_non_nullable
              as RecordatorioResponse?,
      listaAlarmas: freezed == listaAlarmas
          ? _value.listaAlarmas
          : listaAlarmas // ignore: cast_nullable_to_non_nullable
              as List<Model>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecordatorioResponseCopyWith<$Res>? get recordatorioResponse {
    if (_value.recordatorioResponse == null) {
      return null;
    }

    return $RecordatorioResponseCopyWith<$Res>(_value.recordatorioResponse!,
        (value) {
      return _then(_value.copyWith(recordatorioResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BotonCargandoController? botonController,
      int? level,
      String? version,
      RecordatorioResponse? recordatorioResponse,
      List<Model>? listaAlarmas});

  @override
  $RecordatorioResponseCopyWith<$Res>? get recordatorioResponse;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botonController = freezed,
    Object? level = freezed,
    Object? version = freezed,
    Object? recordatorioResponse = freezed,
    Object? listaAlarmas = freezed,
  }) {
    return _then(_$HomeStateImpl(
      botonController: freezed == botonController
          ? _value.botonController
          : botonController // ignore: cast_nullable_to_non_nullable
              as BotonCargandoController?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      recordatorioResponse: freezed == recordatorioResponse
          ? _value.recordatorioResponse
          : recordatorioResponse // ignore: cast_nullable_to_non_nullable
              as RecordatorioResponse?,
      listaAlarmas: freezed == listaAlarmas
          ? _value._listaAlarmas
          : listaAlarmas // ignore: cast_nullable_to_non_nullable
              as List<Model>?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.botonController,
      this.level,
      this.version = "",
      this.recordatorioResponse,
      final List<Model>? listaAlarmas})
      : _listaAlarmas = listaAlarmas;

  @override
  final BotonCargandoController? botonController;
  @override
  final int? level;
  @override
  @JsonKey()
  final String? version;
  @override
  final RecordatorioResponse? recordatorioResponse;
  final List<Model>? _listaAlarmas;
  @override
  List<Model>? get listaAlarmas {
    final value = _listaAlarmas;
    if (value == null) return null;
    if (_listaAlarmas is EqualUnmodifiableListView) return _listaAlarmas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState(botonController: $botonController, level: $level, version: $version, recordatorioResponse: $recordatorioResponse, listaAlarmas: $listaAlarmas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.botonController, botonController) ||
                other.botonController == botonController) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.recordatorioResponse, recordatorioResponse) ||
                other.recordatorioResponse == recordatorioResponse) &&
            const DeepCollectionEquality()
                .equals(other._listaAlarmas, _listaAlarmas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, botonController, level, version,
      recordatorioResponse, const DeepCollectionEquality().hash(_listaAlarmas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final BotonCargandoController? botonController,
      final int? level,
      final String? version,
      final RecordatorioResponse? recordatorioResponse,
      final List<Model>? listaAlarmas}) = _$HomeStateImpl;

  @override
  BotonCargandoController? get botonController;
  @override
  int? get level;
  @override
  String? get version;
  @override
  RecordatorioResponse? get recordatorioResponse;
  @override
  List<Model>? get listaAlarmas;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
