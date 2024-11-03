
import 'package:go_router/go_router.dart';
import 'package:my_flutter_module/app/presentation/routes/text_scann/text_route.dart';

import '../modules/productos/controllers/producto_controller.dart';
import '../modules/productos/views/products_view.dart';
import '../modules/test_provider/controller/counter_controller.dart';
import '../modules/test_provider/controller/state/counter_state.dart';
import '../modules/test_provider/views/counter_view.dart';
import '../modules/usuarios/controllers/state/usuarios_state.dart';
import '../modules/usuarios/controllers/usuarios_controller.dart';
import '../modules/usuarios/views/usuarios_view.dart';
import 'bloqueo/cuenta_bloqueo_routes.dart';
import 'go_route_helper.dart';
import 'home/home_routes.dart';
import 'loguin/loguin_routes.dart';
import 'offline/offline_route.dart';
import 'route_path.dart';
import 'splash/splash_route.dart';
import 'usuarios/usuarios_routes.dart';

mixin Routes {
  final GoRouter _router = GoRouter(
    initialLocation: RoutePath.inicial,
    routes: [
      SplashRoute.splashRoute,
      OfflineRoute.offlineRoute,
      LoguinRoutes.loguin,
      HomeRoutes.home,
      HomeRoutes.crearAlarma,
      UsuariosRoutes.usuarios,
      UsuariosRoutes.userDetails,
      UsuariosRoutes.crearUsuario,
      //Pantalla de bloqueo
      CuentaBloqueoRoutes.bloqueo,
      TextRoute.text,
      //
      GoRouteHelper.goRoute<ProductoController>(
        RoutePath.productos,
        () => const ProductScreen(),
        controller: () => ProductoController(),
      ),
      GoRouteHelper.goRoute<CounterController>(
        RoutePath.testProvider,
        () => CounterScreen(),
        controller: () => CounterController(CounterState(value: 10, mostrarContador: true)),

      ),
      GoRouteHelper.goRoute<UsuariosController>(
        RoutePath.listarUsuarios,
        () => const UsuariosView(),
        controller: () => UsuariosController(UsuariosState(
              "Inicial",
              "Algo mas",
              "super",
              permisos: [Permiso(1, "usuario")],
              titulo: "Mr"))),
    ],
  );

  GoRouter get router => _router; // Getter para obtener el enrutador
}
