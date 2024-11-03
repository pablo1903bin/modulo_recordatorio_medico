
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/fields/custom_text_field.dart';
import 'package:my_flutter_module/app/presentation/mixin/controllers_mixin.dart';

class NumberField extends StatelessWidget with ControllersMixin {
  final TextEditingController controller;

  // Añade los parámetros opcionales de estilo
  final TextStyle? textStyle;
  final InputDecoration? decoration;
  final ValueNotifier<bool>? obscureTextNotifier;

   NumberField({super.key, required this.controller,   this.textStyle,
    this.decoration, this.obscureTextNotifier,});

  @override
  Widget build(BuildContext context) {

    final controllerValidator = getValidadorFild(context);

    return CustomTextField(
      obscureTextNotifier:obscureTextNotifier,
      controller: controller,
      label: "Numero de telefono",
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: controllerValidator.validaNumero,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
     // textStyle: textStyle, // Pasar el estilo de texto a CustomTextField
      decoration: decoration, // Pasar la decoración
    );
  }
}
