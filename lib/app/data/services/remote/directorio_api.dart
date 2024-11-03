import 'dart:convert';

import '../../../domain/functional/respuesta.dart';
import '../../../domain/models/directorio/directorio_response.dart';
import '../../../domain/models/directorio/directorio_response_numeros.dart';
import '../../http/http.dart';
import '../../http/http_mmovil.dart';

class DirectorioApi {
  final HttpMmovil _http;

  DirectorioApi({required HttpMmovil http}) : _http = http;

  Future<Respuesta<HttpFailure, DirectorioResponse>> consultaDirectorio() async {

    try {
      final directorioResponse = await _http.request<DirectorioResponse>(
        "HomeAction",
        method: HttpMethod.get,
        procesaExito: (json) {
          return DirectorioResponse.fromJson(jsonDecode(json));
        },
      );

      return directorioResponse;
    } catch (e) {
      return Respuesta.error(HttpFailure(exception: e));
    }
  }

  Future<Respuesta<HttpFailure, DirectorioResponseNumeros>>
      consultaNumeroServicio(int iC) async {

    try {
      final response = await _http.request<DirectorioResponseNumeros>(
        "PromotoresContratoAction",
        method: HttpMethod.get,
        params: {"tsXyU": "$iC"},
        procesaExito: (json) {
          return DirectorioResponseNumeros.fromJson(jsonDecode(json));
        },
      );
      return response;
    } catch (e) {
      return Respuesta.error(HttpFailure(exception: e));
    }
  }
}
