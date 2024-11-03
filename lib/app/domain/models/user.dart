class User {
  final String? _username;
  final String? _name;
  final String? _apellido;
  final String? _telefono;
  final String? _email;
  final String? _token;

  User({
    String? username,
    String? name,
    String? apellido,
    String? telefono,
    String? email,
    String? token,
  })  : _username = username,
        _name = name,
        _apellido = apellido,
        _telefono = telefono,
        _email = email,
        _token = token;

  // Getters
  String? get username => _username;
  String? get name => _name;
  String? get apellido => _apellido;
  String? get telefono => _telefono;
  String? get email => _email;
  String? get token => _token;

  @override
  String toString() {
    return 'Nombre Usuario: $username, Nombre: $name, Apellido: $apellido, Telefono: $telefono, Email: $email, token: $token';
  }
}
