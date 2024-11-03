
import 'package:go_router/go_router.dart';
import 'package:my_flutter_module/app/presentation/modules/texto/views/scan_text_screen.dart';

import '../route_path.dart';

class TextRoute {
  static GoRoute get text {
    RoutePath.textScann;
    return GoRoute(
      path: RoutePath.textScann,
      builder: (context, state) {
        return  ScanTextScreen();
      },
    );
  }
}
