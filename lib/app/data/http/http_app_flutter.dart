import 'dart:convert';

import '../../domain/functional/respuesta.dart';
import 'http.dart';

class HttpAppFlutter extends Http {
  final String _hostApi;

  HttpAppFlutter({required super.client, hostApi}) : _hostApi = hostApi;

  String _getPayload(Map<String, String> headers, Map<String, dynamic> body) {
    if (headers["Content-Type"] == "application/json") {
      return jsonEncode(body);
    } else {
      return mapToQueryString(body);
    }
  }

  String mapToQueryString(Map<String, dynamic> map) {
    return map.entries.map((entry) {
      final key = Uri.encodeComponent(entry.key);
      final value = Uri.encodeComponent(entry.value.toString());
      return '$key=$value';
    }).join('&');
  }

  Map<String, String> _addHeaders(
      HttpMethod method, Map<String, String> headers) {
    if (method == HttpMethod.post) {
      headers = {...headers, "Content-Type": "application/json"};
    }
    return headers;
  }

  @override
  Uri getUrl(String uri) {
    return Uri.parse("$_hostApi$uri");
  }

  Future<Respuesta<HttpFailure, R>> request<R>(String uri,
      {HttpMethod method = HttpMethod.get,
      Map<String, String> headers = const {},
      Map<String, String> params = const {},
      Map<String, dynamic> body = const {},
      R Function(String)? procesaExito}) async {
    //
    print("Uri en la HttpAppFlutter    $uri       😎  ");
    final response = await super.requestBody(uri,
        method: method,
        headers: _addHeaders(method, headers),
        body: _getPayload(headers, body));

    return response.when(error: (err) {
    print("Hubo un error al realizar la petición HTTP 🚨:");
    print("Código de estado: ${err.statusCode}");
    print("Excepción: ${err.exception}");
    print("Cuerpo del error: ${err.bodyError}");
      return Respuesta.error(err);
    }, exito: (body) {
      print("La peticion http fue un exito                 🍒   ");
      print("Respuesta de la peticion");
      print(body);
      try {
        return _exito<R>(procesaExito, body);
      } catch (e) {
        return Respuesta.error(HttpFailure(statusCode: -1, exception: e));
      }
    });
  }

  Respuesta<HttpFailure, R> _exito<R>(
      R Function(String)? procesaExito, String body) {
    if (procesaExito != null) {
      return Respuesta.exito(procesaExito(body));
    }

    return Respuesta.exito(body as R);
  }

  @override
  String toString() {
    return 'HostApi: $_hostApi';
  }
}
