

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/directorio/directorio_response.dart';
import '../../../../../domain/models/directorio/directorio_response_numeros.dart';

part 'directorio_state.freezed.dart';

@freezed
class DirectorioState with _$DirectorioState {
  const factory DirectorioState({
    DirectorioResponse? resultadoDirectorio,  
    DirectorioResponseNumeros? resultadoServicioNumeros,
    @Default({}) Map<int, DirectorioResponseNumeros> contratosSolicitados, 
  }) = _DirectorioState;
}
