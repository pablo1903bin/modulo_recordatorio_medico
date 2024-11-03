
import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/controller/validador_field_controller.dart';
import 'package:provider/provider.dart';

import '../modules/bloqueo/controllers/bloqueo_controller.dart';
import '../modules/directorio/controllers/directorio_ ontroller.dart';
import '../modules/productos/controllers/producto_controller.dart';
import '../modules/sign_in/controllers/auth_controller.dart';
import '../modules/test_provider/controller/counter_controller.dart';
import '../modules/usuarios/controllers/usuarios_controller.dart';

mixin ControllersMixin on StatelessWidget {
  UsuariosController getUsuariosController(BuildContext context) {
    return Provider.of<UsuariosController>(context, listen: false);
  }

  CounterController getCounterController(BuildContext context) {
    return Provider.of<CounterController>(context, listen: false);
  }

  AuthController getAuthController(BuildContext context) {
    return Provider.of<AuthController>(context, listen: false);
  }

  ProductoController getProductoController(BuildContext context) {
    return Provider.of<ProductoController>(context, listen: false);
  }

  BloqueoController getBloqueoController(BuildContext context){
    return Provider.of<BloqueoController>(context, listen:  false);
  }


  DirectorioController getDirectorioController(BuildContext context){
    return Provider.of<DirectorioController>(context, listen:  false);
  }

  ValidadorFieldController getValidadorFild(BuildContext context){
    return Provider.of<ValidadorFieldController>(context, listen: false);
  }

  bool checkIfProviderExists<P>(BuildContext context) {
    try {
      Provider.of<P>(context, listen: false);
      return true;
    } catch (e) {
      if (e is ProviderNotFoundException) {
        return false;
      }
      rethrow;
    }
  }
}
