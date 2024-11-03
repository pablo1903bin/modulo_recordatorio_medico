

import '../../domain/failures/directorio/directorio_failure.dart';
import '../../domain/failures/directorio/numeros_failure.dart';
import '../../domain/failures/http/http_failure_mapper.dart';
import '../../domain/failures/http/http_request_failure.dart';
import '../../domain/functional/respuesta.dart';
import '../../domain/models/directorio/directorio_response.dart';
import '../../domain/models/directorio/directorio_response_numeros.dart';
import '../../domain/repositories/directorio_repository.dart';
import '../http/http.dart';
import '../services/remote/directorio_api.dart';

class DirectorioRepositoryImpl  with HttpFailureMapper implements DirectorioRepository {
  final DirectorioApi _api;

  DirectorioRepositoryImpl({required DirectorioApi api}) : _api = api;

  @override
  Future<Respuesta<DirectorioFailure, DirectorioResponse>> consultaDirectorios() async {
    final result = await _api.consultaDirectorio();

    return result.when(
      error: _onRequestErrorDirectorio,
      exito: Respuesta.exito,
    );
  }

  @override
  Future<Respuesta<NumerosFailure, DirectorioResponseNumeros>> numeroServicio(int iC) async {
    final result = await _api.consultaNumeroServicio(iC);

    return result.when(
      error: _onRequestErrorNumeros,
      exito: Respuesta.exito,
    );
  }

  // Manejo de errores específicos para DirectorioFailure
  Respuesta<DirectorioFailure, T> _onRequestErrorDirectorio<T>(
      HttpFailure error) {
    return mapFailure<Respuesta<DirectorioFailure, T>>(
        error, _failureWithDirectorio);
  }

  // Manejo de errores específicos para NumerosFailure
  Respuesta<NumerosFailure, T> _onRequestErrorNumeros<T>(HttpFailure error) {
    return mapFailure<Respuesta<NumerosFailure, T>>(error, _failureWithNumeros);
  }

  // Este método mapea los errores HTTP a fallos del dominio para Directorio
  Respuesta<DirectorioFailure, T> _failureWithDirectorio<T>(
      HttpRequestFailure failure) {
    return Respuesta.error(DirectorioFailure.httpFailure(failure));
  }

  // Este método mapea los errores HTTP a fallos del dominio para Numeros
  Respuesta<NumerosFailure, T> _failureWithNumeros<T>(
      HttpRequestFailure failure) {
    return Respuesta.error(NumerosFailure.httpFailure(failure));
  }
}
