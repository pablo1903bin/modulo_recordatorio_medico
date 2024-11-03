import 'package:freezed_annotation/freezed_annotation.dart';

import '../http/http_request_failure.dart'; // Asegúrate de importar donde está definido HttpRequestFailure

part 'cooperacion_failure.freezed.dart';

@freezed
class CooperacionFailure with _$CooperacionFailure {
  const factory CooperacionFailure.httpFailure(
    HttpRequestFailure httpFailure,
  ) = _CooperacionHttpFailure;

  // Puedes añadir otros tipos de fallos específicos si es necesario, por ejemplo:
  // const factory CooperacionFailure.unexpected() = _UnexpectedFailure;
}
