import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../global/widgets/custom_app_bar.dart';
import '../../../global/widgets/drawer_widget.dart';
import '../../../routes/route_path.dart';

class UsuariosView extends StatelessWidget {
  const UsuariosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: RoutePath.listarUsuarios,
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('Usuario $index'),
            subtitle: const Text('Detalles del usuario'),
            onTap: () {
              // Acción al tocar el usuario (puedes agregar navegación a detalles de usuario)
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .go('/crear_usuario'); // Navegar a la pantalla de crear usuario
        },
        backgroundColor: const Color.fromARGB(255, 255, 131, 30),
        child: const Icon(Icons.add),
      ),
    );
  }
}
