// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sesion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SesionState {
  String get usuario => throw _privateConstructorUsedError;
  String get sessionID => throw _privateConstructorUsedError;
  List<String> get cookies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SesionStateCopyWith<SesionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SesionStateCopyWith<$Res> {
  factory $SesionStateCopyWith(
          SesionState value, $Res Function(SesionState) then) =
      _$SesionStateCopyWithImpl<$Res, SesionState>;
  @useResult
  $Res call({String usuario, String sessionID, List<String> cookies});
}

/// @nodoc
class _$SesionStateCopyWithImpl<$Res, $Val extends SesionState>
    implements $SesionStateCopyWith<$Res> {
  _$SesionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = null,
    Object? sessionID = null,
    Object? cookies = null,
  }) {
    return _then(_value.copyWith(
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      sessionID: null == sessionID
          ? _value.sessionID
          : sessionID // ignore: cast_nullable_to_non_nullable
              as String,
      cookies: null == cookies
          ? _value.cookies
          : cookies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SesionStateImplCopyWith<$Res>
    implements $SesionStateCopyWith<$Res> {
  factory _$$SesionStateImplCopyWith(
          _$SesionStateImpl value, $Res Function(_$SesionStateImpl) then) =
      __$$SesionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String usuario, String sessionID, List<String> cookies});
}

/// @nodoc
class __$$SesionStateImplCopyWithImpl<$Res>
    extends _$SesionStateCopyWithImpl<$Res, _$SesionStateImpl>
    implements _$$SesionStateImplCopyWith<$Res> {
  __$$SesionStateImplCopyWithImpl(
      _$SesionStateImpl _value, $Res Function(_$SesionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = null,
    Object? sessionID = null,
    Object? cookies = null,
  }) {
    return _then(_$SesionStateImpl(
      null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      null == sessionID
          ? _value.sessionID
          : sessionID // ignore: cast_nullable_to_non_nullable
              as String,
      null == cookies
          ? _value._cookies
          : cookies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SesionStateImpl implements _SesionState {
  _$SesionStateImpl(this.usuario, this.sessionID, final List<String> cookies)
      : _cookies = cookies;

  @override
  final String usuario;
  @override
  final String sessionID;
  final List<String> _cookies;
  @override
  List<String> get cookies {
    if (_cookies is EqualUnmodifiableListView) return _cookies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cookies);
  }

  @override
  String toString() {
    return 'SesionState(usuario: $usuario, sessionID: $sessionID, cookies: $cookies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SesionStateImpl &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            (identical(other.sessionID, sessionID) ||
                other.sessionID == sessionID) &&
            const DeepCollectionEquality().equals(other._cookies, _cookies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usuario, sessionID,
      const DeepCollectionEquality().hash(_cookies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SesionStateImplCopyWith<_$SesionStateImpl> get copyWith =>
      __$$SesionStateImplCopyWithImpl<_$SesionStateImpl>(this, _$identity);
}

abstract class _SesionState implements SesionState {
  factory _SesionState(final String usuario, final String sessionID,
      final List<String> cookies) = _$SesionStateImpl;

  @override
  String get usuario;
  @override
  String get sessionID;
  @override
  List<String> get cookies;
  @override
  @JsonKey(ignore: true)
  _$$SesionStateImplCopyWith<_$SesionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
