// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directorio_response_numeros.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DirectorioResponseNumeros _$DirectorioResponseNumerosFromJson(
    Map<String, dynamic> json) {
  return _DirectorioResponseNumeros.fromJson(json);
}

/// @nodoc
mixin _$DirectorioResponseNumeros {
  List<Servicio> get ps => throw _privateConstructorUsedError;
  String? get sessionID => throw _privateConstructorUsedError;
  String get cR => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectorioResponseNumerosCopyWith<DirectorioResponseNumeros> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectorioResponseNumerosCopyWith<$Res> {
  factory $DirectorioResponseNumerosCopyWith(DirectorioResponseNumeros value,
          $Res Function(DirectorioResponseNumeros) then) =
      _$DirectorioResponseNumerosCopyWithImpl<$Res, DirectorioResponseNumeros>;
  @useResult
  $Res call({List<Servicio> ps, String? sessionID, String cR});
}

/// @nodoc
class _$DirectorioResponseNumerosCopyWithImpl<$Res,
        $Val extends DirectorioResponseNumeros>
    implements $DirectorioResponseNumerosCopyWith<$Res> {
  _$DirectorioResponseNumerosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ps = null,
    Object? sessionID = freezed,
    Object? cR = null,
  }) {
    return _then(_value.copyWith(
      ps: null == ps
          ? _value.ps
          : ps // ignore: cast_nullable_to_non_nullable
              as List<Servicio>,
      sessionID: freezed == sessionID
          ? _value.sessionID
          : sessionID // ignore: cast_nullable_to_non_nullable
              as String?,
      cR: null == cR
          ? _value.cR
          : cR // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectorioResponseNumerosImplCopyWith<$Res>
    implements $DirectorioResponseNumerosCopyWith<$Res> {
  factory _$$DirectorioResponseNumerosImplCopyWith(
          _$DirectorioResponseNumerosImpl value,
          $Res Function(_$DirectorioResponseNumerosImpl) then) =
      __$$DirectorioResponseNumerosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Servicio> ps, String? sessionID, String cR});
}

/// @nodoc
class __$$DirectorioResponseNumerosImplCopyWithImpl<$Res>
    extends _$DirectorioResponseNumerosCopyWithImpl<$Res,
        _$DirectorioResponseNumerosImpl>
    implements _$$DirectorioResponseNumerosImplCopyWith<$Res> {
  __$$DirectorioResponseNumerosImplCopyWithImpl(
      _$DirectorioResponseNumerosImpl _value,
      $Res Function(_$DirectorioResponseNumerosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ps = null,
    Object? sessionID = freezed,
    Object? cR = null,
  }) {
    return _then(_$DirectorioResponseNumerosImpl(
      ps: null == ps
          ? _value._ps
          : ps // ignore: cast_nullable_to_non_nullable
              as List<Servicio>,
      sessionID: freezed == sessionID
          ? _value.sessionID
          : sessionID // ignore: cast_nullable_to_non_nullable
              as String?,
      cR: null == cR
          ? _value.cR
          : cR // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectorioResponseNumerosImpl implements _DirectorioResponseNumeros {
  _$DirectorioResponseNumerosImpl(
      {final List<Servicio> ps = const <Servicio>[],
      this.sessionID,
      this.cR = ""})
      : _ps = ps;

  factory _$DirectorioResponseNumerosImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectorioResponseNumerosImplFromJson(json);

  final List<Servicio> _ps;
  @override
  @JsonKey()
  List<Servicio> get ps {
    if (_ps is EqualUnmodifiableListView) return _ps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ps);
  }

  @override
  final String? sessionID;
  @override
  @JsonKey()
  final String cR;

  @override
  String toString() {
    return 'DirectorioResponseNumeros(ps: $ps, sessionID: $sessionID, cR: $cR)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectorioResponseNumerosImpl &&
            const DeepCollectionEquality().equals(other._ps, _ps) &&
            (identical(other.sessionID, sessionID) ||
                other.sessionID == sessionID) &&
            (identical(other.cR, cR) || other.cR == cR));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ps), sessionID, cR);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectorioResponseNumerosImplCopyWith<_$DirectorioResponseNumerosImpl>
      get copyWith => __$$DirectorioResponseNumerosImplCopyWithImpl<
          _$DirectorioResponseNumerosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectorioResponseNumerosImplToJson(
      this,
    );
  }
}

abstract class _DirectorioResponseNumeros implements DirectorioResponseNumeros {
  factory _DirectorioResponseNumeros(
      {final List<Servicio> ps,
      final String? sessionID,
      final String cR}) = _$DirectorioResponseNumerosImpl;

  factory _DirectorioResponseNumeros.fromJson(Map<String, dynamic> json) =
      _$DirectorioResponseNumerosImpl.fromJson;

  @override
  List<Servicio> get ps;
  @override
  String? get sessionID;
  @override
  String get cR;
  @override
  @JsonKey(ignore: true)
  _$$DirectorioResponseNumerosImplCopyWith<_$DirectorioResponseNumerosImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Servicio _$ServicioFromJson(Map<String, dynamic> json) {
  return _Servicio.fromJson(json);
}

/// @nodoc
mixin _$Servicio {
  @JsonKey(name: "n")
  String get n => throw _privateConstructorUsedError;
  @JsonKey(name: "mrc")
  String get mrc => throw _privateConstructorUsedError;
  @JsonKey(name: "mr")
  String get mr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicioCopyWith<Servicio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicioCopyWith<$Res> {
  factory $ServicioCopyWith(Servicio value, $Res Function(Servicio) then) =
      _$ServicioCopyWithImpl<$Res, Servicio>;
  @useResult
  $Res call(
      {@JsonKey(name: "n") String n,
      @JsonKey(name: "mrc") String mrc,
      @JsonKey(name: "mr") String mr});
}

/// @nodoc
class _$ServicioCopyWithImpl<$Res, $Val extends Servicio>
    implements $ServicioCopyWith<$Res> {
  _$ServicioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? mrc = null,
    Object? mr = null,
  }) {
    return _then(_value.copyWith(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      mrc: null == mrc
          ? _value.mrc
          : mrc // ignore: cast_nullable_to_non_nullable
              as String,
      mr: null == mr
          ? _value.mr
          : mr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicioImplCopyWith<$Res>
    implements $ServicioCopyWith<$Res> {
  factory _$$ServicioImplCopyWith(
          _$ServicioImpl value, $Res Function(_$ServicioImpl) then) =
      __$$ServicioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "n") String n,
      @JsonKey(name: "mrc") String mrc,
      @JsonKey(name: "mr") String mr});
}

/// @nodoc
class __$$ServicioImplCopyWithImpl<$Res>
    extends _$ServicioCopyWithImpl<$Res, _$ServicioImpl>
    implements _$$ServicioImplCopyWith<$Res> {
  __$$ServicioImplCopyWithImpl(
      _$ServicioImpl _value, $Res Function(_$ServicioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? mrc = null,
    Object? mr = null,
  }) {
    return _then(_$ServicioImpl(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      mrc: null == mrc
          ? _value.mrc
          : mrc // ignore: cast_nullable_to_non_nullable
              as String,
      mr: null == mr
          ? _value.mr
          : mr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicioImpl implements _Servicio {
  _$ServicioImpl(
      {@JsonKey(name: "n") this.n = "",
      @JsonKey(name: "mrc") this.mrc = "",
      @JsonKey(name: "mr") this.mr = ""});

  factory _$ServicioImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicioImplFromJson(json);

  @override
  @JsonKey(name: "n")
  final String n;
  @override
  @JsonKey(name: "mrc")
  final String mrc;
  @override
  @JsonKey(name: "mr")
  final String mr;

  @override
  String toString() {
    return 'Servicio(n: $n, mrc: $mrc, mr: $mr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicioImpl &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.mrc, mrc) || other.mrc == mrc) &&
            (identical(other.mr, mr) || other.mr == mr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, n, mrc, mr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicioImplCopyWith<_$ServicioImpl> get copyWith =>
      __$$ServicioImplCopyWithImpl<_$ServicioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicioImplToJson(
      this,
    );
  }
}

abstract class _Servicio implements Servicio {
  factory _Servicio(
      {@JsonKey(name: "n") final String n,
      @JsonKey(name: "mrc") final String mrc,
      @JsonKey(name: "mr") final String mr}) = _$ServicioImpl;

  factory _Servicio.fromJson(Map<String, dynamic> json) =
      _$ServicioImpl.fromJson;

  @override
  @JsonKey(name: "n")
  String get n;
  @override
  @JsonKey(name: "mrc")
  String get mrc;
  @override
  @JsonKey(name: "mr")
  String get mr;
  @override
  @JsonKey(ignore: true)
  _$$ServicioImplCopyWith<_$ServicioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
