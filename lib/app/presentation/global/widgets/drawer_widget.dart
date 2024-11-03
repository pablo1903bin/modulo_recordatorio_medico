import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';

import '../../../domain/models/user.dart';
import '../../../domain/repositories/authentication_repository.dart';
import '../../routes/route_path.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
      future: _getUserData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Drawer(
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return const Drawer(
            child: Center(child: Text('Error al cargar datos de usuario')),
          );
        }

        final user = snapshot.data;

        return Drawer(
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: colorSecundarioAlterno,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          // context.go(RoutePath.userDetails);
                        },
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: colorAlterno4,
                          backgroundImage: AssetImage(
                              'lib/app/images/usuario.png'), // Coloca aquí la ruta de tu imagen
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        user?.name ?? 'Desconocido',
                        style: const TextStyle(
                          color: colorPrincipal,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        user?.email ?? 'Desconocido',
                        style: const TextStyle(
                          color: colorPrincipal,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: colorAlterno2),
                title: const Text(
                  'Inicio',
                  style: TextStyle(color: colorAlterno2),
                ),
                onTap: () {
                  Navigator.pop(context);
                  context.go(RoutePath.home);
                },
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                  color: colorSecundarioAlterno,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.logout, color: colorAlterno2),
                      title: const Text(
                        'Cerrar sesión',
                        style: TextStyle(color: colorAlterno2),
                      ),
                      onTap: () async {
                        Navigator.pop(context);

                        // Obtén la instancia del repositorio de autenticación
                        final authenticationRepository =
                            GetIt.instance<AuthenticationRepository>();

                        // Llama al método signOut() para cerrar sesión
                        await authenticationRepository.signOut();

                        // Redirige al usuario a la pantalla de inicio de sesión
                        context.go(RoutePath.loguin);
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.info, color: colorAlterno5),
                          SizedBox(width: 8),
                          Text(
                            'Versión 1.0.0',
                            style: TextStyle(
                              color: colorAlterno2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Método para obtener los datos del usuario desde GetIt
  Future<User?> _getUserData() async {
    final authenticationRepository = GetIt.instance<AuthenticationRepository>();
    return authenticationRepository.getUseDta();
  }
}
