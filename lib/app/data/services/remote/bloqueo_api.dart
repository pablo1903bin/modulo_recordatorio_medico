import 'dart:convert';

import '../../../domain/functional/respuesta.dart';
import '../../../domain/models/bloqueo/bloqueo_cuenta_request.dart';
import '../../../domain/models/server_response/mmovil_v1_response.dart';
import '../../http/http.dart';
import '../../http/http_mmovil.dart';

class BloqueoApi {
  final HttpMmovil _http;
  BloqueoApi({required HttpMmovil http}) : _http = http;

  Future<Respuesta<HttpFailure, MmovilV1Response>> bloquearCuenta( BloqueoCuentaRequest request,
  ) {
    return _http.request<MmovilV1Response>(
      "usuario/bloquea",
      method: HttpMethod.post,
      params: {
        "passPhrase": request.passPhrase,
        "so": request.so,
      },
      procesaExito: (json) {
        return MmovilV1Response.fromJson(jsonDecode(json));
      },
    );
  }
}
