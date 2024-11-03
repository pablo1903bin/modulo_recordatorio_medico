
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/fields/custom_text_field.dart';
import 'package:my_flutter_module/app/presentation/mixin/controllers_mixin.dart';

class RfcField extends StatelessWidget with ControllersMixin {
  const RfcField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = getValidadorFild(context);

    return CustomTextField(

      keyboardType: TextInputType.text,
      label: "RFC",
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: controller.validaRfc,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[A-Z0-9]')), // Permitir solo letras mayúsculas y números
        LengthLimitingTextInputFormatter(13), // Longitud máxima del RFC
      ],
    );
  }
}
