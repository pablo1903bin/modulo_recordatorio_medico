import 'package:go_router/go_router.dart';

import '../../modules/bloqueo/controllers/bloqueo_controller.dart';
import '../../modules/bloqueo/views/cuenta_bloqueo_view.dart';
import '../go_route_helper.dart';
import '../route_path.dart';

class CuentaBloqueoRoutes {
  static GoRoute get bloqueo {
    return GoRouteHelper.goRoute<BloqueoController>(
        RoutePath.bloqueoCuenta,
        () => const CuentaBloqueoView(),
        controller: () => BloqueoController(false));
  }
}
