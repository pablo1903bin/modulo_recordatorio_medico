import 'package:go_router/go_router.dart';

import '../../modules/splash/views/splash_view.dart';
import '../route_path.dart';

class SplashRoute {
  static GoRoute get splashRoute {

    return GoRoute(
      path: RoutePath.splash,
      builder: (context, state) => const SplashScreen(),
    );
  }
}
