
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/fields/custom_text_field.dart';
import 'package:my_flutter_module/app/presentation/mixin/controllers_mixin.dart';

class DateField extends StatelessWidget with ControllersMixin {
  final TextEditingController controller;
  final TextStyle? textStyle;
  final String fecha;
  final InputDecoration? decoration;
  final ValueNotifier<bool>? obscureTextNotifier;

  DateField({super.key, required this.controller, this.textStyle, required this.fecha, this.decoration, this.obscureTextNotifier});

  final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    final validadorController = getValidadorFild(context);

    return GestureDetector(
      onTap: () async {
        DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );

        if (selectedDate != null) {
          final formattedDate = _dateFormat.format(selectedDate);
          controller.text =
              formattedDate; // Actualiza directamente el valor del controlador
        }
      },
      child: AbsorbPointer(
        child: CustomTextField(
          obscureTextNotifier:obscureTextNotifier,
          controller: controller,
          label: fecha,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validadorController.validateDate, // Usa el método de validación correcto
          textInputAction: TextInputAction.next,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'\d{1,2}/\d{1,2}/\d{4}')),
          ],
          decoration: decoration,
        ),
      ),
    );
  }
}
