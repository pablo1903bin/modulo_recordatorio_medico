


import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/mixin/validador_field_mixin.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/fields/input_fields/generic_text_field.dart';
import 'package:my_flutter_module/app/presentation/mixin/controllers_mixin.dart';


class EmailField extends StatelessWidget with ControllersMixin, ValidadorFieldMixin {

  final String label;
  final Function(String?) onChanged;

  EmailField({
    super.key,
    required this.label,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {

    return GenericTextField(
      onChanged: onChanged,
      keyboardType: TextInputType.emailAddress,
      label: label,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validaEmail,
      textInputAction: TextInputAction.next,
    );
  }
}
