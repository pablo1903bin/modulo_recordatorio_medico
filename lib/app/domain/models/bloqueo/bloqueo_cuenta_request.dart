import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloqueo_cuenta_request.freezed.dart';


@freezed
class BloqueoCuentaRequest with _$BloqueoCuentaRequest {
  const factory BloqueoCuentaRequest({
    required String passPhrase,  // Frase de paso para autenticación
    required String so,          // Sistema operativo desde el cual se realiza la solicitud
  }) = _BloqueoCuentaRequest;

}
