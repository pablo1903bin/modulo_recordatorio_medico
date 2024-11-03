import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';

class GenericTextField extends FormField<String> {
  final String label;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;

  final InputDecoration? decoration;
  final bool showToggleIcon;

  // `ValueNotifier` para controlar la visibilidad del texto
  final ValueNotifier<bool>? obscureTextNotifier;

  GenericTextField({
    super.key,
    required this.label,
    super.validator,
    super.autovalidateMode,
    this.obscureTextNotifier,
    this.textInputAction,
    this.keyboardType,
    this.inputFormatters,
    this.controller,
    this.decoration,
    this.showToggleIcon = false,
    super.enabled,
    void Function(String)? onChanged,
  }) : super(
          builder: (field) {

            final ValueNotifier<bool> isObscured = obscureTextNotifier ?? ValueNotifier(false);

            bool exito = !field.hasError;
            if (validator != null) {
              exito = exito && validator(field.value) == null;
            }
            bool fieldNotClean = field.value != null && field.value!.trim() != "";

            return ValueListenableBuilder(
              valueListenable: isObscured,
              builder: (context, obscureTextValue, child) {
                return TextFormField(
                  controller: controller,
                  keyboardType: keyboardType,
                  obscureText: obscureTextValue,
                  textInputAction: textInputAction,
                  enabled: enabled,
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
                    field.didChange(value);
                    if (onChanged != null) {
                      onChanged(value);
                    }
                  },
                );
              },
            );
          },
        );

}
