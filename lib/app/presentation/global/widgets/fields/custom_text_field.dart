
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';

class CustomTextField extends FormField<String> {
  final String label;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final InputDecoration? decoration;
  final bool showToggleIcon;

  // `ValueNotifier` para controlar la visibilidad del texto
  final ValueNotifier<bool>? obscureTextNotifier;

  CustomTextField({
    super.key,
    required this.label,
    super.validator,
    super.autovalidateMode,
    this.obscureTextNotifier,
    this.textInputAction,
    this.keyboardType,
    this.inputFormatters,
    this.controller,
    this.textStyle,
    this.decoration,
    this.showToggleIcon = false,
    super.enabled,
    void Function(String)? onChanged,
  }) : super(
          builder: (campo) {
            // Usa el ValueNotifier pasado o crea uno nuevo si no se proporciona
            final ValueNotifier<bool> isObscured = obscureTextNotifier ?? ValueNotifier(true);

            // Verifica si el campo de texto no tiene errores (exitoso)
            bool exito = !campo.hasError;
            if (validator != null) {
              exito = exito && validator(campo.value) == null;
            }

            // Verifica si el campo tiene algún texto (no está vacío)
            bool fieldNotClean = campo.value != null && campo.value!.trim() != "";

            return Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              height: 55,
              child: ValueListenableBuilder(
                valueListenable: isObscured,
                builder: (context, obscureTextValue, child) {
                  return TextFormField(
                    controller: controller,
                    keyboardType: keyboardType,
                    obscureText: obscureTextValue,
                    textInputAction: textInputAction,
                    enabled: enabled,
                    style: textStyle,
                    inputFormatters: inputFormatters,
                    decoration: (decoration ?? const InputDecoration()).copyWith(
                      labelText: label,
                      suffixIcon: showToggleIcon
                          ? IconButton(
                              icon: Icon(
                                obscureTextValue ? Icons.visibility : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                isObscured.value = !obscureTextValue;
                              },
                            )
                          : (exito
                              ? const Icon(Icons.check_circle, color: colorExito)
                              : (exito == false && fieldNotClean
                                  ? const Icon(Icons.error, color: colorError)
                                  : null)),
                    ),
                    onChanged: (value) {
                      campo.didChange(value);
                      print('Valor actual del TextField: $value');
                      if (onChanged != null) {
                        onChanged(value);
                      }
                    },
                  );
                },
              ),
            );
          },
        );

}
