import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../modules/offline/views/offline_view.dart';
import '../route_path.dart';

class OfflineRoute {
  static GoRoute get offlineRoute {

    return GoRoute(
      path: RoutePath.offline,
      builder: (context, state) {
        final VoidCallback? onRetry = state.extra as VoidCallback?;
        return OfflineView(
          onRetry: onRetry ??
              () {
                print("No se proporcionó ninguna función de reintento");
              },
        );
      },
    );
  }
}
