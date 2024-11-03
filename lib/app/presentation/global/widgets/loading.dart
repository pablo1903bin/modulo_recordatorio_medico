import 'package:flutter/material.dart';

class LoadingDialog {
  // Método estático para mostrar el diálogo de carga
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: SizedBox(
          width: 80,
          height: 80,
          child: CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 122, 158, 255)),
          ),
        ),
      ),
    );
  }

  // Método estático para cerrar el diálogo de carga
  static void hide(BuildContext context) {
    Navigator.pop(context);
  }
}
