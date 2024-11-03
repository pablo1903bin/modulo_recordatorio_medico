



import 'package:my_flutter_module/app/presentation/controller/states/loading_indicator_state.dart';
import 'package:my_flutter_module/app/states/state_notifier.dart';

class LoadingIndicatorController extends StateNotifier<LoadingIndicatorState> {
  LoadingIndicatorController(super.state);


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
