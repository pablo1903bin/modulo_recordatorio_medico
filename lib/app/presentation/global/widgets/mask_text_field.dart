import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';

class MaskTextField extends FormField<String> {
  final String label;
  final bool? obscureText;
  final bool validacionEnabled;
  final void Function()? onPress;
  final void Function()? onRelease;
  final TextInputAction? textInputAction;

  MaskTextField({
    super.key,
    required this.label,
    super.validator,
    super.autovalidateMode,
    this.obscureText,
    this.textInputAction,
    super.enabled,
    void Function(String)? onChanged,
    this.onPress,
    this.onRelease,
    this.validacionEnabled = true,
  }) : super(
          builder: (field) {
            bool exito = !field.hasError;
            if (validator != null) {
              exito = exito && validator(field.value) == null;
            }
            bool fieldNotClean = field.value != null && field.value!.trim() != "";

            return Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              height: 55,
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: obscureText ?? false,
                textInputAction: textInputAction,
                enabled: enabled,
                onChanged: (value) {
                  field.didChange(value);
                  if (onChanged != null) {
                    onChanged(value);
                  }
                },
                decoration: InputDecoration(
                  labelText: label,
                  labelStyle: const TextStyle(
                    color: colorPrincipal,
                    fontSize: 14,
                  ),
                  contentPadding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: colorPrincipal, width: 2.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: colorSecundario, width: 1.5),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: colorPrincipal, width: 1.5),
                  ),
                  prefixIcon: exito && validacionEnabled
                      ? const Icon(Icons.check_circle, color: colorExito)
                      : exito == false && fieldNotClean && validacionEnabled
                          ? const Icon(Icons.error, color: colorError)
                          : null,
                  suffixIcon: GestureDetector(
                    onTapUp: (details) {
                      if (onRelease != null) {
                        onRelease();
                      }
                    },
                    onTapDown: (details) {
                      if (onPress != null) {
                        onPress();
                      }
                    },
                    onLongPressEnd: (details) {
                      if (onRelease != null) {
                        onRelease();
                      }
                    },
                    child: const Icon(
                      Icons.visibility,
                      color: colorAlterno4,
                    ),
                  ),
                ),
              ),
            );
          },
        );
}
