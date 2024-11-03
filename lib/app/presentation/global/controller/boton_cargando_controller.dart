
import 'package:my_flutter_module/app/presentation/global/controller/state/boton_cargando_state.dart';

import '../../../states/state_notifier.dart';


class BotonCargandoController extends StateNotifier<BotonCargandoState> {
  BotonCargandoController(super.state);

  void cargando(){

    notifica(state.copyWith(cargando: true));
  }

  void normal(){

    notifica(state.copyWith(cargando: false));
  }

  void activa(){
    notifica(state.copyWith(activo: true));
  }

  void desactiva(){
    notifica(state.copyWith(activo: false));
  }

   void mostrar() {
    notifica(state.copyWith(visible: true));
  }

  void ocultar() {
    notifica(state.copyWith(visible: false));
  }
}
