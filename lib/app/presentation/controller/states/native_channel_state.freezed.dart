// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'native_channel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NativeChannelState {
  MethodChannel? get platform => throw _privateConstructorUsedError;
  GlobalKey<NavigatorState>? get navigatorKey =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NativeChannelStateCopyWith<NativeChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NativeChannelStateCopyWith<$Res> {
  factory $NativeChannelStateCopyWith(
          NativeChannelState value, $Res Function(NativeChannelState) then) =
      _$NativeChannelStateCopyWithImpl<$Res, NativeChannelState>;
  @useResult
  $Res call({MethodChannel? platform, GlobalKey<NavigatorState>? navigatorKey});
}

/// @nodoc
class _$NativeChannelStateCopyWithImpl<$Res, $Val extends NativeChannelState>
    implements $NativeChannelStateCopyWith<$Res> {
  _$NativeChannelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = freezed,
    Object? navigatorKey = freezed,
  }) {
    return _then(_value.copyWith(
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as MethodChannel?,
      navigatorKey: freezed == navigatorKey
          ? _value.navigatorKey
          : navigatorKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<NavigatorState>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NativeChannelStateImplCopyWith<$Res>
    implements $NativeChannelStateCopyWith<$Res> {
  factory _$$NativeChannelStateImplCopyWith(_$NativeChannelStateImpl value,
          $Res Function(_$NativeChannelStateImpl) then) =
      __$$NativeChannelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MethodChannel? platform, GlobalKey<NavigatorState>? navigatorKey});
}

/// @nodoc
class __$$NativeChannelStateImplCopyWithImpl<$Res>
    extends _$NativeChannelStateCopyWithImpl<$Res, _$NativeChannelStateImpl>
    implements _$$NativeChannelStateImplCopyWith<$Res> {
  __$$NativeChannelStateImplCopyWithImpl(_$NativeChannelStateImpl _value,
      $Res Function(_$NativeChannelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = freezed,
    Object? navigatorKey = freezed,
  }) {
    return _then(_$NativeChannelStateImpl(
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as MethodChannel?,
      navigatorKey: freezed == navigatorKey
          ? _value.navigatorKey
          : navigatorKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<NavigatorState>?,
    ));
  }
}

/// @nodoc

class _$NativeChannelStateImpl implements _NativeChannelState {
  _$NativeChannelStateImpl({this.platform, this.navigatorKey});

  @override
  final MethodChannel? platform;
  @override
  final GlobalKey<NavigatorState>? navigatorKey;

  @override
  String toString() {
    return 'NativeChannelState(platform: $platform, navigatorKey: $navigatorKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NativeChannelStateImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.navigatorKey, navigatorKey) ||
                other.navigatorKey == navigatorKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, platform, navigatorKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NativeChannelStateImplCopyWith<_$NativeChannelStateImpl> get copyWith =>
      __$$NativeChannelStateImplCopyWithImpl<_$NativeChannelStateImpl>(
          this, _$identity);
}

abstract class _NativeChannelState implements NativeChannelState {
  factory _NativeChannelState(
          {final MethodChannel? platform,
          final GlobalKey<NavigatorState>? navigatorKey}) =
      _$NativeChannelStateImpl;

  @override
  MethodChannel? get platform;
  @override
  GlobalKey<NavigatorState>? get navigatorKey;
  @override
  @JsonKey(ignore: true)
  _$$NativeChannelStateImplCopyWith<_$NativeChannelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
