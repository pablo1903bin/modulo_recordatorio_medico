

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'native_channel_state.freezed.dart';

@freezed
class NativeChannelState with _$NativeChannelState {

  factory NativeChannelState(
    {
      MethodChannel? platform, 
      GlobalKey<NavigatorState>? navigatorKey
    }
  ) = _NativeChannelState;

}