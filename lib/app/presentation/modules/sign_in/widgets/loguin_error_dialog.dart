import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';

class LoginErrorDialog extends StatelessWidget {
  final String mensaje;

  const LoginErrorDialog({
    super.key,
    this.mensaje = 'Las credenciales proporcionadas no son correctas. Por favor, verifica tu usuario y contraseña.',
  });

  static void mostrar(BuildContext context, {String? mensaje}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return LoginErrorDialog(mensaje: mensaje ?? '');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: colorSueve,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      title: const Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.redAccent,
            size: 28,
          ),
          SizedBox(width: 10),
          Text(
            'Error',
            style: TextStyle(
              fontSize: 20,
              color: colorError,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      content: Text(
        mensaje,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[700],
        ),
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: colorPrincipal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Cierra el diálogo
          },
          child: const Text(
            'Ok',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
