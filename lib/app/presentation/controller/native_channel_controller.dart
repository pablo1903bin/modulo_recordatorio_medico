import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/sesion/sesion_state.dart';
import '../../states/state_notifier.dart';
import '../mixin/cookies_native_mixin.dart';
import '../mixin/mixin_repositorios_comunes.dart';
import 'states/native_channel_state.dart';

class NativeChannelController extends StateNotifier<NativeChannelState>
    with RepositoriosComunes, CookiesNativeMixin {
  NativeChannelController(super.state);

  Future<Map<dynamic, dynamic>> getParams() async {
    if (state.platform == null) {
      return {};
    }

    final Map<dynamic, dynamic> params =
        await state.platform!.invokeMethod("sendParams");

    return params;
  }

  void closeByError(String mensaje) {
    if (state.platform != null) {
      state.platform!.invokeMethod("closeByError", [mensaje]);
    }
  }

  void addNavigationKey(GlobalKey<NavigatorState> navigatorKey) {
    changeState(state.copyWith(navigatorKey: navigatorKey));
  }

  void listen() {
    if (state.platform == null) {
      return;
    }

    state.platform!.setMethodCallHandler(_handleMethods);
  }

  Future<dynamic> _handleMethods(MethodCall call) async {
    switch (call.method) {
      case 'sendRoute':
        _onGetRoute(call.arguments);
        break;
      default:
        throw PlatformException(
          code: 'Unimplemented',
          details: 'method ${call.method} is not implemented',
        );
    }
  }

  void _onGetRoute(Map<dynamic, dynamic> params) {
    sesionRepository.replaceSession(SesionState(params["usuario"],
        params["sessionID"], parseCookies(params["cookies"])));

    if (state.navigatorKey != null &&
        state.navigatorKey!.currentContext != null) {
      //GoRouter.of(state.navigatorKey!.currentContext!).pushReplacement(params["route"]); // reemplaza solo vista actual
      GoRouter.of(state.navigatorKey!.currentContext!)
          .go(params["route"]); // reemplaza toda la pila
    }
  }

  void sendLogout(String mensaje) {
    if (state.platform != null) {
      state.platform!.invokeMethod("sendLogout", mensaje);
    }
  }
}
