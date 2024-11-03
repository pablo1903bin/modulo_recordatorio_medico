import 'dart:io'; // Importa bibliotecas para manejar excepciones de sockets y cliente HTTP.

import 'package:http/http.dart'; // Importa la biblioteca HTTP para manejar las solicitudes HTTP.

import '../../domain/functional/respuesta.dart'; // Importa una clase personalizada para manejar respuestas funcionales.
import '../../domain/utils/log.dart'; // Importa una utilidad personalizada para registrar logs.

part 'http_part.dart';

class Http {
  // Cliente HTTP que se utiliza para realizar solicitudes.
  final Client _client;

  // Constructor que recibe un cliente HTTP.
  Http({required Client client}) : _client = client;

  // Método para reemplazar los parámetros de consulta en la URI (URL).
  Uri replaceQueryParameters(Uri uri, Map<String, String> query) {
    if (query.isNotEmpty) {
      uri = uri.replace(queryParameters: query);
    }
    return uri;
  }

  Future<Response> execute(
      Uri url,
      HttpMethod method,
      Map<String, String> headers,
      Map<String, String> params,
      String body) async {
    // Imprimir la URL, los encabezados, los parámetros y el cuerpo para depuración
    print('URL: $url');
    print('Method: $method');
    print('Headers: $headers');
    print('Query Params: $params');
    print('Body: $body');

    switch (method) {
      case HttpMethod.post:
        return await _client.post(url, headers: headers, body: body);
      case HttpMethod.patch:
        return await _client.patch(url, headers: headers, body: body);
      case HttpMethod.delete:
        return await _client.delete(url, headers: headers, body: body);
      case HttpMethod.put:
        return await _client.put(url, headers: headers, body: body);
      case HttpMethod.get:
        return await _client.get(url, headers: headers);
      default:
        return await _client.get(url, headers: headers);
    }
  }

  // Método que convierte una cadena URI en un objeto Uri.
  Uri getUrl(String uri) {
    return Uri.parse(uri);
  }

  // Método que realiza una solicitud HTTP con un cuerpo y devuelve una respuesta.
  Future<Respuesta<HttpFailure, String>> requestBody(String uri,
      {HttpMethod method = HttpMethod.get, // Método HTTP por defecto es GET.
      Map<String, String> headers = const {}, // Encabezados HTTP por defecto.
      Map<String, String> params = const {}, // Parámetros de consulta por defecto.
      String body = ""}) async {

    final url = replaceQueryParameters(getUrl(uri), params); // Reemplaza los parámetros de consulta en la URL.
    //Debe de imprimir toda la url asi: http://45.33.13.164:8080/gateway/api/authentication/sign-in
    print('Url final completa: ⚡         $url         ⚡  ');

    // Registra la solicitud en el log para depuración.
    Log.debug("[request] url: $url");
    Log.debug("[request] method: $method");
    Log.debug("[request] headers: $headers");
    Log.debug("[request] Query-params: $params");
    Log.debug("[request] body: $body}");

    try {
      final Response response = await execute(
          url, method, headers, params, body); // Ejecuta la solicitud HTTP.

      // Registra la respuesta en el log para depuración.
      Log.debug("[response] response: $response");
      Log.debug("[response] statusCode: ${response.statusCode}");
      Log.debug("[response] body: ${response.body}");
      Log.debug("[response] return: ${getRespuesta(response)}");

      return getRespuesta(response); // Devuelve la respuesta procesada.
    } catch (e) {
      return getException(e); // Maneja y devuelve cualquier excepción ocurrida.
    }
  }

  // Método que procesa la respuesta HTTP y la convierte en un objeto `Respuesta`.
  Respuesta<HttpFailure, R> getRespuesta<R>(Response response) {
    final statusCode = response.statusCode;
    if (statusCode >= 200 && statusCode < 300) {
      return Respuesta.exito(response.body
          as R); // Si el código es exitoso (2xx), devuelve la respuesta como éxito.
    }

    return Respuesta.error(HttpFailure(
        statusCode: statusCode,
        bodyError:
            response.body)); // Si hay un error, devuelve un `HttpFailure`.
  }

  // Método que procesa las excepciones ocurridas durante la solicitud HTTP.
  Respuesta<HttpFailure, R> getException<R>(Object e) {
    //movil || web
    if (e is SocketException || e is ClientException) {
      return Respuesta.error(HttpFailure(
          statusCode: -1,
          exception:
              NetworkException())); // Maneja excepciones de red específicas.
    }

    return Respuesta.error(
        HttpFailure(exception: e)); // Maneja otras excepciones.
  }
}
