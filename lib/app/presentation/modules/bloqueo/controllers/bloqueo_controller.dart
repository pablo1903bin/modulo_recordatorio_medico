import '../../../../domain/models/bloqueo/bloqueo_cuenta_request.dart';
import '../../../../states/state_notifier.dart';
import '../../../mixin/mixin_repositorios_comunes.dart';
import '../../../mixin/mmovil_repositorios.dart';

class BloqueoController extends StateNotifier<bool> with RepositoriosComunes, MmovilRepositorios {
  //constructor

  BloqueoController(super.state) {
    print('Instancia Inicial de BloqueoController:  $state       ✅');
  }

  // Método para bloquear la aplicación
  Future<void> bloquearApp() async {
    
    // Llamada al repositorio de bloqueo para bloquear la cuenta
    final bloqApp = bloqueoRepository.bloquearCuenta(
      const BloqueoCuentaRequest(passPhrase: 'valido', so: 'Android'),
    );

    // Obtener el nivel de batería usando el repositorio nativo
    final nivelBateria = await nativeRepository.obtenerPorcentajeCargaBateria();
    
    print('Solicitar bloquear cuenta.....   🐸🐸🐸   $nivelBateria');
  }
}
