
import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/fields/custom_text_field.dart';

class UserTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String?) onChanged;
  final InputDecoration? decoration;
  final ValueNotifier<bool> obscureTextNotifier;

  UserTextField({
    super.key,
    required this.controller,
    required this.onChanged,
    this.decoration,
    ValueNotifier<bool>? obscureTextNotifier,
  }) : obscureTextNotifier = obscureTextNotifier ?? ValueNotifier(false);

  // Función de validación para el campo de usuario
  String? validateUser(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'El campo Usuario no puede estar vacío o contener solo espacios';
    }
    if (value.contains(' ')) {
      return 'El campo Usuario no debe contener espacios';
    }
    return null; // Retorna null si no hay error
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      label: "Usuario",
      obscureTextNotifier: obscureTextNotifier,
     decoration: (decoration ?? const InputDecoration()).copyWith(
           // Cambia el color de la etiqueta (labelText)
      labelStyle: const TextStyle(
        color: colorPrincipal, // Cambia a tu color deseado
        fontSize: 16, // Opcional, puedes ajustar el tamaño
      ),
        labelText: "Usuario",
        suffixIcon: null, // No es necesario ícono para este campo
        // Define el borde cuando el TextField está enfocado
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: colorPrincipal, width: 2.0),
        ),
        // Define el borde cuando el TextField está habilitado, pero no enfocado
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: colorSecundario, width: 1.5),
        ),
        // Define el borde cuando el TextField está deshabilitado
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: colorPrincipal, width: 1.5),
        ),
      ),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      textStyle: const TextStyle(fontSize: 16, color: colorPrincipal),
      onChanged: (value) {
        onChanged(value);
      },
      validator: validateUser,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
