import 'package:my_flutter_module/app/data/http/http.dart';
import 'package:my_flutter_module/app/data/services/remote/recordatori_api.dart';
import 'package:my_flutter_module/app/domain/failures/http/http_failure_mapper.dart';
import 'package:my_flutter_module/app/domain/failures/http/http_request_failure.dart';
import 'package:my_flutter_module/app/domain/functional/respuesta.dart';
import 'package:my_flutter_module/app/domain/models/failures/recordatorio/recordatorio_failure.dart';
import 'package:my_flutter_module/app/domain/models/recordatorios/recordatorio_response.dart';
import 'package:my_flutter_module/app/domain/repositories/recordatorio_repository.dart';

class RecordatorioRepositoryImpl with HttpFailureMapper implements RecordatorioRepository {
  final RecordatoriApi _api;

  RecordatorioRepositoryImpl({required RecordatoriApi api}) : _api = api;

  @override
  Future<Respuesta<RecordatorioFailure, RecordatorioResponse>> consultaRecordatoriosIdUser(
      String idUsuario) async {

    // Llamar a la API para obtener los recordatorios
    final result = await _api.getAllRecordatorioByIdUser(idUser: idUsuario);

    // Manejar el resultado, mapeando errores o éxito
    return result.when(
      error: _onRequestError<RecordatorioResponse>,
      exito: Respuesta.exito,
    );
  }

  // Método para manejar errores de solicitud HTTP
  Respuesta<RecordatorioFailure, T> _onRequestError<T>(HttpFailure error) {
    return mapFailure<Respuesta<RecordatorioFailure, T>>(error, _failureWith);
  }

  // Mapea el fallo HTTP a un fallo de recordatorio específico
  Respuesta<RecordatorioFailure, T> _failureWith<T>(HttpRequestFailure failure) {
    return Respuesta.error(RecordatorioFailure.httpFailure(failure));
  }
}
