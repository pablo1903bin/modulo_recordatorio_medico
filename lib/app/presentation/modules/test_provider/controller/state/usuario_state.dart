class UsuarioState {
  final String nombre;
  final int edad;

  static const int edadMaxima = 100;

  UsuarioState({required this.nombre, required this.edad}) {
    if (edad > edadMaxima) {
      throw ArgumentError('La edad no puede superar $edadMaxima años.');
    }
  }
}
