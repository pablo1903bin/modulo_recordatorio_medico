

import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/fields/custom_text_field.dart';
import 'package:my_flutter_module/app/presentation/mixin/controllers_mixin.dart';

class EmailField extends StatelessWidget with ControllersMixin {
  final TextEditingController controller;

  // Añade los parámetros opcionales de estilo
  final TextStyle? textStyle;
  final InputDecoration? decoration;
  final ValueNotifier<bool>? obscureTextNotifier;

  EmailField({
    super.key,
    required this.controller,
    this.textStyle, // Recibe el estilo de texto
    this.decoration, this.obscureTextNotifier, // Recibe la decoración
  });

  @override
  Widget build(BuildContext context) {
    final validadorController = getValidadorFild(context);

    return CustomTextField(
      controller: controller,
      obscureTextNotifier:obscureTextNotifier,
      keyboardType: TextInputType.emailAddress,
      label: "Correo Electrónico",
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validadorController.validaEmail,
      textInputAction: TextInputAction.next,
      textStyle: textStyle, // Pasar el estilo de texto a CustomTextField
      decoration: decoration, // Pasar la decoración
    );
  }
}
