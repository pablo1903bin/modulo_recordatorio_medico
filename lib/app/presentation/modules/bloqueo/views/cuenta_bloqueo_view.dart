import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../global/widgets/boton_secundario.dart';
import '../../../global/widgets/custom_app_bar.dart';
import '../../../global/widgets/drawer_widget.dart';
import '../../../global/widgets/loading.dart';
import '../../../mixin/controllers_mixin.dart';
import '../../../mixin/mixin_repositorios_comunes.dart';
import '../../../routes/route_path.dart';

class CuentaBloqueoView extends StatelessWidget with ControllersMixin, RepositoriosComunes {
  const CuentaBloqueoView({super.key});

  @override
  Widget build(BuildContext context) {
    //Acceder a mi metodo para bloquear app
    final bloqueoController = getBloqueoController(context);

    return Scaffold(
      appBar: const CustomAppBar(
        title: RoutePath.bloqueoCuenta,
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.lock_outline,
              size: 80,
              color: Color.fromARGB(255, 150, 149, 149),
            ),
            const SizedBox(height: 20),
            const Text(
              '¿Está seguro de que desea bloquear la aplicación?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Al bloquear la aplicación, perderá acceso a su cuenta y no podrá realizar transacciones o consultas.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 110, 110, 110),
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: BotonSecundario(
                    titulo: 'Bloquear',
                    onPressed: () {
                      // Mostrar el diálogo de carga
                      LoadingDialog.show(context);
                      //
                      bloqueoController.bloquearApp();

                      Future.delayed(const Duration(seconds: 2), () {


                        // Mostrar el diálogo de confirmación
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Aplicación Bloqueada'),
                            content: const Text(
                              'Su cuenta ha sido bloqueada. Para más información, por favor contacte con soporte.',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  // Cerrar el diálogo
                                  Navigator.pop(context);
                                  // Navegar a la pantalla de inicio
                                  context.go(RoutePath.home);
                                },
                                child: const Text('Aceptar'),
                              ),
                            ],
                          ),
                        );
                      });
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: BotonSecundario(
                    titulo: 'Cancelar',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
