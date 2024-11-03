//Esto se llama desde las vistas
import '../../../../states/state_notifier.dart';
import 'state/usuarios_state.dart';

class UsuariosController extends StateNotifier<UsuariosState> {
  UsuariosController(super.key); // Inicializa el estado.
  String getUserName() {
    return state.claveUsuario;
  }

  void cambiarNombre() {
    //changeState("CMENDOZA");
    print("Usuarioactual: $state");
    notifica(state
        .copyWith(claveUsuario: "CMENDOZA", permisos: [Permiso(2, "Admin")]));

    print("Usuario Nuevo: $state");
  }
}
