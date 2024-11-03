

import '../failures/directorio/directorio_failure.dart';
import '../failures/directorio/numeros_failure.dart';
import '../functional/respuesta.dart';
import '../models/directorio/directorio_response.dart';
import '../models/directorio/directorio_response_numeros.dart';

abstract class DirectorioRepository {
  
  Future<Respuesta<DirectorioFailure, DirectorioResponse>> consultaDirectorios();

  Future<Respuesta<NumerosFailure, DirectorioResponseNumeros>> numeroServicio(int iC);

}
