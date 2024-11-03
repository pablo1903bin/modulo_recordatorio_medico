import 'dart:convert';

import 'package:http/http.dart';
import 'package:my_flutter_module/app/data/http/http.dart';
import 'package:my_flutter_module/app/data/http/http_app_flutter.dart';
import 'package:my_flutter_module/app/domain/functional/respuesta.dart';
import 'package:my_flutter_module/app/domain/models/recordatorios/recordatorio_response.dart';

class RecordatoriApi {
  final HttpAppFlutter _http;

  RecordatoriApi({HttpAppFlutter? http})
      : _http = http ?? HttpAppFlutter(client: Client());

  Future<Respuesta<HttpFailure, RecordatorioResponse>> getAllRecordatorioByIdUser({required String idUser}) async {
    final uri = "/recordatorio/usuario/$idUser";
    return await _http.request<RecordatorioResponse>(uri,
        method: HttpMethod.get,
        params: {"id": idUser},
        headers: {"Content-Type": "application/json"},
        procesaExito: (json) {
      return RecordatorioResponse.fromJson(jsonDecode(json));
    });
  }
}
