
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../mixin/controllers_mixin.dart';
import '../controller/boton_cargando_controller.dart';
import 'colores.dart';
import 'loading_center.dart';

// BotonContinuar es un widget que gestiona su estado de carga y activación dinámicamente,
// utilizando el patrón de diseño Provider para escuchar el estado de BotonCargandoController.
class BotonContinuar extends StatelessWidget with ControllersMixin {

  // Función que se ejecuta cuando se presiona el botón. Recibe opcionalmente
  // un controlador de tipo BotonCargandoController.
  final Function(BotonCargandoController?) onPressed;

  // Título que se mostrará dentro del botón.
  final String titulo;

  // Constructor que inicializa las propiedades onPressed y titulo.
  const BotonContinuar({super.key, required this.onPressed, required this.titulo});

  // Método build que construye el widget del botón.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40), // Define un padding horizontal de 40.
      child: SizedBox(
        width: double.infinity, // El botón ocupa todo el ancho disponible.
        height: 40, // Altura fija del botón.
        child: getBotonLoading(context), // Llama a un método que determina si se muestra el botón o un loader.
      ),
    );
  }

  // Método que determina qué mostrar: el botón o un indicador de carga (loader).
  Widget getBotonLoading(BuildContext context) {

    // Verifica si existe un BotonCargandoController en el contexto.
    // Si no existe, se devuelve el botón con un controller null.
    if (!checkIfProviderExists<BotonCargandoController>(context)) {
      return getBoton(null); // Llama a getBoton con controller null.
    }

    // Si existe el BotonCargandoController, usa Consumer para escuchar cambios en el estado.
    return Consumer<BotonCargandoController>(
      builder: (context, controller, child) {
        // Si el estado no está en modo "cargando", muestra el botón.
        if (!controller.state.cargando) {
          return getBoton(controller); // Muestra el botón si no está en estado de carga.
        }

        // Si está en modo "cargando", muestra un indicador de carga (LoadingCenter).
        return const LoadingCenter();
      },
    );
  }

  // Método que construye el widget del botón.
  // Recibe un controlador opcional de tipo BotonCargandoController para gestionar su estado.
  Widget getBoton(BotonCargandoController? controller) {

    // Determina si el botón está activo, es decir, si el controlador está activo o no.
    bool botonActivo = controller == null || controller.state.activo;

    // Devuelve un MaterialButton que cambia su comportamiento dependiendo de si está activo o no.
    return MaterialButton(
      onPressed: () {
        // Si el botón está activo, ejecuta la función onPressed pasando el controlador.
        if (botonActivo) {
          onPressed(controller); // Ejecuta la función proporcionada cuando el botón es presionado.
        }
      },
      // El color del botón depende de si está activo (colorPrincipal) o no (colorSecundarioAlpha).
      color: botonActivo ? colorPrincipal : colorSecundarioAlpha,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18), // Establece bordes redondeados.
      ),
      // El texto que se muestra dentro del botón, usando el colorCuarto.
      child: Text(
        titulo,
        style: const TextStyle(color: colorCuarto),
      ),
    );
  }
}
