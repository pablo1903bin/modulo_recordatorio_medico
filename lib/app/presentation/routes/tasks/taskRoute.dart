import 'package:go_router/go_router.dart';

import '../../modules/task/views/tasklist_view.dart';
import '../route_path.dart';

class TaskRoute {
  static GoRoute get testProviderRouter {
    return GoRoute(
      path: RoutePath.task,
      builder: (context, state) {
        return const TaskListScreen();
      },
    );
  }
}
