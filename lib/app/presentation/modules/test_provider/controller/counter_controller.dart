import '../../../../states/state_notifier.dart';
import 'state/counter_state.dart';

class CounterController extends StateNotifier<CounterState> {
  // Constructor con parámetro opcional o nulo y crea una instancia de CounterState(0) si el estado es nulo

  CounterController(super.state)   {
    print('Solicitando inctancia Inicial de CounterState    ✅  desde el constructor.');
  }

  void increment() {
    print('Valor actual antes de incrementar: ${state.value}');

    notifica(state.copyWith(value: state.value + 1), notificar: true);

    print('Valor actual despues de incrementar: ${state.value}');
  }

  void decrement() {
    notifica(state.copyWith(value: (state.value) - 1));
  }

  void ocultarTargeta() {
    print('Estado actual de mi contador antes de mostrar la targeta: $state');
    notifica(state.copyWith(mostrarContador: false));
    print('Estado actual de mi contador despues de mostrar la targeta: $state');
  }

  void mostrarTargeta() {
    notifica(state.copyWith(mostrarContador: true));
  }
}
