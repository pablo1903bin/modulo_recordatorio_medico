

import '../../domain/failures/bloqueo/bloqueo_cuenta_failure.dart';
import '../../domain/failures/http/http_failure_mapper.dart';
import '../../domain/failures/http/http_request_failure.dart';
import '../../domain/functional/respuesta.dart';
import '../../domain/models/bloqueo/bloqueo_cuenta_request.dart';
import '../../domain/models/server_response/mmovil_v1_response.dart';
import '../../domain/repositories/bloqueo_repository.dart';
import '../http/http.dart';
import '../services/remote/bloqueo_api.dart';

class BloqueoRepositoryImpl  with HttpFailureMapper implements BloqueoRepository{
  final BloqueoApi _api;
  BloqueoRepositoryImpl({required BloqueoApi api}) : _api = api;

  @override
  Future<Respuesta<BloqueoCuentaFailure, MmovilV1Response>> bloquearCuenta(
     BloqueoCuentaRequest request) async {
    // Realiza la solicitud a la API de bloqueo.
    // El resultado es de tipo Respuesta<HttpFailure, BloqueoCuentaResponse>.
    final result = await _api.bloquearCuenta(
      request,
    );

    return result.when(
      error: _onRequestError<MmovilV1Response>,
      exito: Respuesta.exito,
    );
  }

  /// Maneja los errores de solicitud HTTP y los convierte en errores de dominio.
  ///
  /// Toma un [HttpFailure] y lo transforma en un [BloqueoCuentaFailure].
  /// Este método utiliza [mapFailure] para mapear los errores genéricos a específicos.
  Respuesta<BloqueoCuentaFailure, T> _onRequestError<T>(HttpFailure error) {
    return mapFailure<Respuesta<BloqueoCuentaFailure, T>>(error, _failureWith);
  }

  /// Convierte un [HttpRequestFailure] genérico en un [BloqueoCuentaFailure] específico.
  ///
  /// Esto permite manejar los errores de manera más precisa dentro del dominio
  /// de la aplicación.
Respuesta<BloqueoCuentaFailure, T> _failureWith<T>(HttpRequestFailure failure) {
  return Respuesta.error(BloqueoCuentaFailure.httpFailure(failure));
}

}
