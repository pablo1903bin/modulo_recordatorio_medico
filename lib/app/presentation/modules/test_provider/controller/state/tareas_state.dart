class Tarea {
  //atributos pueden ser nulos
  int? id;
  String? nombre;
  bool? esCompletada;

  Tarea({required this.nombre, this.id, this.esCompletada = false});

  Tarea copiaCon({int? miid, String? titulo, bool? seCompleto}) {
    return Tarea(
        id: miid ?? id, // Si no se proporciona un nuevo nombre, usa el actual.
        nombre: titulo ?? nombre,
        esCompletada: seCompleto ?? esCompletada);
  }
}
