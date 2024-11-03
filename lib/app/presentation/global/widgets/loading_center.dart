

import 'package:flutter/material.dart';
// LoadingCenter es un widget que muestra un indicador de carga centrado en la pantalla.
// Está diseñado para ser reutilizado cuando sea necesario mostrar una operación en progreso
// dentro de una vista, como al esperar por la respuesta de una API.

class LoadingCenter extends StatelessWidget {
  // Constructor de la clase, permite agregar una clave opcional.
  const LoadingCenter({super.key});

  // Método build que define la interfaz visual del widget.
  @override
  Widget build(BuildContext context) {
    // El widget Stack permite superponer elementos uno sobre otro.
    return const Stack(
      children: [
        // Align posiciona el CircularProgressIndicator en el centro del Stack.
        Align(
          alignment: Alignment.center,
          child: CircularProgressIndicator(), // Indicador circular de carga.
        ),
      ],
    );
  }
}
