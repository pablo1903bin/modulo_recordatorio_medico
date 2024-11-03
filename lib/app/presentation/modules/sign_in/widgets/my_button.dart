import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final bool enabled;

  const MyButton({
    super.key,
    required this.onTap,
    this.enabled = true, // Por defecto, el botón está habilitado
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null, // Solo llama a onTap si el botón está habilitado
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: enabled ? colorPrincipal : Colors.grey, // Cambia el color según el estado
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            "Iniciar Sesión",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
