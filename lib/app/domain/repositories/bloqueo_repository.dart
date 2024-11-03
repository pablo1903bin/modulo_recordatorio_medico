


import '../failures/bloqueo/bloqueo_cuenta_failure.dart';
import '../functional/respuesta.dart';
import '../models/bloqueo/bloqueo_cuenta_request.dart';
import '../models/server_response/mmovil_v1_response.dart';

abstract class BloqueoRepository {

  Future<Respuesta<BloqueoCuentaFailure, MmovilV1Response>> bloquearCuenta(BloqueoCuentaRequest request);
  
}