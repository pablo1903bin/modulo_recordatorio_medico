// custom_app_bar.dart

import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title; // Parámetro para el título dinámico

  const CustomAppBar({super.key, this.title}); // Constructor que acepta el título

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colorSueve, // Color sólido
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu),
          color: colorPrincipal,
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Abre el Drawer
          },
        ),
      ),

      actions: [
        IconButton(
          color: colorPrincipal,
          icon: const Icon(Icons.search),
          onPressed: () {
            print('Notificaciones presionadas');
          },
        ),

      ],
      elevation: 0.0,
      centerTitle: true,
    );
  }

  String _formatTitle(String title) {
    return title.replaceAll('/', ' '); // Elimina el prefijo `/`
  }
}
