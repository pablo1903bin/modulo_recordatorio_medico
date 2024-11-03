import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_module/app/presentation/global/mixin/validador_field_mixin.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/fields/input_fields/generic_text_field.dart';
import 'package:my_flutter_module/app/presentation/mixin/controllers_mixin.dart';


class RfcField extends StatelessWidget with ControllersMixin, ValidadorFieldMixin {
  const RfcField({super.key, required this.label, required this.onChanged});

  final String label;
  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {

    return GenericTextField(
      onChanged: onChanged,
      keyboardType: TextInputType.text,
      label: label,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validaRfc,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[A-Z0-9a-z]')),
        LengthLimitingTextInputFormatter(13),
      ],
    );
  }
}
