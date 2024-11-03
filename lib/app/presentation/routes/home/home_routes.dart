
import 'package:go_router/go_router.dart';
import 'package:my_flutter_module/app/presentation/controller/loading_lndicator_controller.dart';
import 'package:my_flutter_module/app/presentation/controller/states/loading_indicator_state.dart';
import 'package:my_flutter_module/app/presentation/modules/home/views/agregar_alarma.dart';
import 'package:my_flutter_module/app/presentation/routes/go_route_helper.dart';

import '../../modules/home/views/home_page_view.dart';
import '../route_path.dart';

class HomeRoutes {

  static GoRoute get home {

    return GoRouteHelper.goRouteMulti(
      RoutePath.home,
      () => const HomePageView(),
      [
        GoRouteHelper.c<LoadingIndicatorController>( () => LoadingIndicatorController(LoadingIndicatorState())),
        //
      ],
    );
  }

    static GoRoute get crearAlarma {

    return GoRouteHelper.goRouteMulti(
      RoutePath.programaMed,
      () => AgregarAlarma(),
      [
        GoRouteHelper.c<LoadingIndicatorController>( () => LoadingIndicatorController(LoadingIndicatorState())),
      ],
    );
  }
}
