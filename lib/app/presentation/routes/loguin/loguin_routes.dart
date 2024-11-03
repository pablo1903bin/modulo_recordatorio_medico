import 'package:go_router/go_router.dart';
import 'package:my_flutter_module/app/presentation/controller/loading_lndicator_controller.dart';
import 'package:my_flutter_module/app/presentation/controller/states/loading_indicator_state.dart';

import '../../../data/providers/auth/state/user_auth_state.dart';
import '../../modules/sign_in/controllers/auth_controller.dart';
import '../../modules/sign_in/views/login_page.dart';
import '../go_route_helper.dart';
import '../route_path.dart';

class LoguinRoutes {

 static GoRoute get loguin {

    return GoRouteHelper.goRouteMulti(
      RoutePath.loguin,
      () => LoginPage(),
      [
        GoRouteHelper.c<LoadingIndicatorController>( () => LoadingIndicatorController(LoadingIndicatorState())),
        GoRouteHelper.c<AuthController>(() => AuthController(UserAuthState()))
      ]
    );
  }
}
