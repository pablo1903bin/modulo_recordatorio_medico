import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_module/app/presentation/global/mixin/validador_field_mixin.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/fields/input_fields/generic_text_field.dart';
import 'package:my_flutter_module/app/presentation/mixin/controllers_mixin.dart';

class NumberField extends StatelessWidget with ControllersMixin, ValidadorFieldMixin{

  final String label;
  final Function(String?) onChanged;

  NumberField({super.key, required this.label, required this.onChanged});

  @override
  Widget build(BuildContext context) {

    return GenericTextField(
      label: label,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validaNumero,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
