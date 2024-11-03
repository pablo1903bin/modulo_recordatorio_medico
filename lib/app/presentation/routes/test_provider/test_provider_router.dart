import 'package:go_router/go_router.dart';

import '../../modules/test_provider/views/counter_view.dart';
import '../route_path.dart';

class TestProviderRouter {
  static GoRoute get testProviderRouter {
    return GoRoute(
      path: RoutePath.testProvider,
      builder: (context, state) {
        return CounterScreen();
      },
    );
  }
}
