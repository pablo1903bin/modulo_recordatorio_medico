import 'dart:developer'
    as dev; // Importa la biblioteca `dart:developer` para usar la función `log` para la salida de registros.

class Log {
  static bool enabled =
      false; // Variable estática que controla si los logs están habilitados o no. Por defecto, está deshabilitado.

  late DateTime start; // Variable que almacena la hora de inicio del log.
  DateTime? end; // Variable que almacena la hora de finalización del log.
  late List<String> mensajes; // Lista para almacenar mensajes de log.

  // Constructor que inicializa la lista de mensajes y la hora de inicio.
  Log() {
    mensajes = [];
    start = DateTime.now();
  }

  // Método para añadir un mensaje a la lista de mensajes.
  add(String m) {
    mensajes.add(m);
  }

  // Método para mostrar todos los mensajes almacenados en el log junto con la duración del registro.
  show({String? titulo}) {
    end = DateTime.now(); // Establece la hora de finalización.

    // Imprime el título y la hora de inicio del log.
    debug("------------start-$titulo-${start.toString()}---------------");

    // Imprime todos los mensajes del log.
    for (var m in mensajes) {
      debug(m);
    }

    // Imprime el tiempo transcurrido entre el inicio y el final del log.
    debug("Time: ${end!.difference(start).toString()}");

    // Imprime el título y la hora de finalización del log.
    debug("------------end-$titulo-${end.toString()}---------------");
  }

  // Método estático para imprimir mensajes de depuración si el log está habilitado.
  static void debug(String m) {
    if (enabled) {
      // Si el log está habilitado, imprime el mensaje.
      dev.log(m);
    }
  }
}
