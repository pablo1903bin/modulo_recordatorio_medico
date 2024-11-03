import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/controller/mask_field_controller.dart';
import 'package:my_flutter_module/app/presentation/global/controller/state/mask_field_state.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/mask_text_field.dart';
import 'package:my_flutter_module/app/presentation/mixin/controllers_mixin.dart';
import 'package:provider/provider.dart';

class PasswordField extends StatelessWidget with ControllersMixin{

  const PasswordField({super.key, this.onValidacion, this.onChanged, required this.label, this.validacionEnabled=true, this.forzarError = false});

  final void Function(String)? onChanged;
  final void Function(String, MaskFieldController)? onValidacion;
  final String label;
  final bool validacionEnabled;
  final bool forzarError;

  @override
  Widget build(BuildContext context) {

    if(validacionEnabled){
      return _getField();
    }

    return _getFieldNoValida();
  }

  Widget _getField(){

    return ChangeNotifierProvider(
      create: (context) => MaskFieldController(MaskFieldState(forzarError: false)),
    builder: (context, child) {

      return Consumer<MaskFieldController>(
        builder: (context, controller, child) {

          controller.changeState(
            controller.state.copyWith(forzarError: forzarError)
          );

          return MaskTextField(
            obscureText: controller.state.enmascarar,
            label: label,
            autovalidateMode: AutovalidateMode.onUserInteraction ,
            validator: (value) {
              final exito = controller.validaPassword(value);

              if(onValidacion != null){
                onValidacion!(value??"", controller);
              }

              return exito;
            },
            textInputAction: TextInputAction.next,
            onChanged: onChanged,
            onPress: controller.onPress,
            onRelease: controller.onRelease,
            validacionEnabled: true,
          );
        }
      );

    });
  }

  Widget _getFieldNoValida(){
    return ChangeNotifierProvider(create: (context) => MaskFieldController(MaskFieldState()),
      builder: (context, child) {

        return Consumer<MaskFieldController>(
          builder: (context, controller, child) {

            return MaskTextField(
              obscureText: controller.state.enmascarar,
              label: label,
              textInputAction: TextInputAction.next,
              onChanged: onChanged,
              onPress: controller.onPress,
              onRelease: controller.onRelease,
              validacionEnabled: false
            );
          }
        );

      });
  }


}
