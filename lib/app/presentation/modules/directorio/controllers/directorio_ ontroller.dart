

import '../../../../domain/failures/token/token_failure.dart';
import '../../../../states/state_notifier.dart';
import '../../../failures/http_failure_unwrap.dart';
import '../../../mixin/i18n_mixin.dart';
import '../../../mixin/mixin_repositorios_comunes.dart';
import '../../../mixin/mmovil_repositorios.dart';
import 'state/directorio_state.dart';

class DirectorioController extends StateNotifier<DirectorioState>
    with MmovilRepositorios, HttpFailureUnwrap, I18NMixin, RepositoriosComunes {
  DirectorioController(super.state);

  Future<void> consultaDirectorioContratos() async {
    try {
      final resToken = await nativeRepository.getToken();
      resToken.when(
        error: (tokenError) {
          _errorToken(tokenError);
        },
        exito: (token) async {
          _resExito(token);
        },
      );
    } catch (e) {
      notifica(state.copyWith(resultadoDirectorio: null));
    }
  }

  void _resExito(String token) async {
    try {
      final respuesta = await directorioRepository.consultaDirectorios();
      respuesta.when(
        error: (directorioFailure) {
          notifica(state.copyWith(resultadoDirectorio: null));
        },
        exito: (directorioResponse) async {
          notifica(state.copyWith(resultadoDirectorio: directorioResponse));
        },
      );
    } catch (e) {
      notifica(state.copyWith(resultadoDirectorio: null));
    }
  }

  Future<void> consultaNumeroServicio(int iC) async {
    if (state.contratosSolicitados.containsKey(iC)) {
      // Si ya tenemos el resultado, no hacemos la consulta, solo notificamos el estado actual
      notifica(state.copyWith(
        resultadoServicioNumeros: state.contratosSolicitados[iC],
      ));
      return;
    }
    // Si no lo tengo, realizamos la consulta
    notifica(state.copyWith(resultadoServicioNumeros: null));

    try {
      final respuesta = await directorioRepository.numeroServicio(iC);
      respuesta.when(
        error: (respuestaError) {},
        exito: (respuestaExito) async {
          // Almacenamos el resultado en el mapa para evitar volver a consultarlo
          final contratosActualizados = {
            ...state.contratosSolicitados,
            iC: respuestaExito,
          };

          notifica(state.copyWith(
            resultadoServicioNumeros: respuestaExito,
            contratosSolicitados: contratosActualizados, // Actualizamos el mapa
          ));
        },
      );
    } catch (e) {
      notifica(state.copyWith(resultadoServicioNumeros: null));
    }
  }

  void _errorToken(TokenFailure tokenFallido) {
    final mensajeError = _handleTokenFailure(tokenFallido);
    tokenFallido.when(
      notFound: () {
        print("Error de token: $mensajeError");
      },
      cancelo: () {
        // No lo uso
      },
    );
  }

  String _handleTokenFailure(TokenFailure tokenFailure) {
    return tokenFailure.when(
      notFound: () => "Vlaio verg ano estaba",
      cancelo: () => "cancelar esta mierda",
    );
  }
}
