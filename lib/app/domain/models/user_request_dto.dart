import 'package:flutter/material.dart';

class UserRequestDto {
  BuildContext? _context;
  String? _username;
  String? _password;

  // Constructor
  UserRequestDto({String? username, String? password, BuildContext? context})
      : _username = username,
        _password = password,
        _context = context;

  // Getter y Setter para username
  String? get username => _username;
  set username(String? value) {
    _username = value;
  }

  // Getter y Setter para password
  String? get password => _password;
  set password(String? value) {
    _password = value;
  }

  // Getter y Setter para context
  BuildContext? get context => _context;
  set context(BuildContext? value) {
    _context = value;
  }

  @override
  String toString() {
    return 'Usuario: $_username, Contraseña: $_password';
  }
}
