import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario.freezed.dart';
part 'usuario.g.dart';

@freezed
class Usuario with _$Usuario {
  factory Usuario({
    int? id,
    String? username,
    String? password,
    String? name,
    String? apellido,
    String? telefono,
    String? email,
    String? fechaCreacion,
    String? role,
  }) = _Usuario;

  factory Usuario.fromJson(Map<String, dynamic> json) => _$UsuarioFromJson(json);
}
