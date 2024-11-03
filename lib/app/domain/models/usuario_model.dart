class Usuario {
  final String nombre;
  final String apellidoMaterno;
  final String apellidoPaterno;
  final String email;
  final String telefono;
  final DateTime fechaCreacion;

  Usuario(
      {required this.nombre,
      required this.apellidoMaterno,
      required this.apellidoPaterno,
      required this.email,
      required this.telefono,
      DateTime? fecha})
      : fechaCreacion = fecha ?? DateTime.now();

  @override
  String toString() {
    return 'Nombre: $nombre, A Paterno: $apellidoPaterno, A Materno: $apellidoMaterno, Email:  $email, Telefono: $telefono, fecha creacion: $fechaCreacion';
  }
}
