
import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';

class Titulo extends StatelessWidget {
  final String? titulo;

  const Titulo({super.key, this.titulo});

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo ?? "titulo",
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: colorPrincipal,
      ),
    );
  }
}
