
import 'package:go_router/go_router.dart';
import 'package:my_flutter_module/app/presentation/modules/usuarios/views/crear_usuario_view.dart';
import 'package:my_flutter_module/app/presentation/routes/route_path.dart';

class CrearUsuariosRoutes {
  static GoRoute get crearUsuario {
    return GoRoute(
      path: RoutePath.crearUsuarios,
      builder: (context, state) {
        return const CrearUsuarioView();
      },
    );
  }
}
