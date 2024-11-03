import 'package:freezed_annotation/freezed_annotation.dart';

import '../http/http_request_failure.dart'; // Asegúrate de importar donde está definido HttpRequestFailure

part 'bloqueo_cuenta_failure.freezed.dart';

@freezed
class BloqueoCuentaFailure with _$BloqueoCuentaFailure {
  const factory BloqueoCuentaFailure.httpFailure(
    HttpRequestFailure httpFailure,
  ) = _BloqueoCuentaFailure;
}
