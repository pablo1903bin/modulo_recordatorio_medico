

import '../../domain/models/sesion/sesion_state.dart';
import '../services/device/native_services.dart';

class HttpSesionService{
  SesionState _sesionState;
  final NativeService _nativeService;

  HttpSesionService(
    {
      required SesionState sesionState,
      required NativeService nativeService
    }
  ) : _sesionState = sesionState, _nativeService = nativeService;


  void save(SesionState state){
    _sesionState = state.copyWith();
  }


  SesionState get sesion {
    return _sesionState;
  }

  // Reemplaza session ID en el nativo IOS o Android
  void replaceSessionIdInNative(String? sid){
    if(sid != null && sid.isNotEmpty){
      _sesionState = _sesionState.copyWith(sessionID: sid);

    }
  }

  void replaceSession(SesionState sesionState){
    _sesionState = sesionState;
  }

  void sesionTerminadaToNative(String mensaje){

  }
}
