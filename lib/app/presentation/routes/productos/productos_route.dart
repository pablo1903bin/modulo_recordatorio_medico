import 'package:go_router/go_router.dart';

import '../../modules/productos/views/products_view.dart';
import '../route_path.dart';

class ProductosRoute {
  static GoRoute get productosRoute {
    return GoRoute(
      path: RoutePath.productos,
      builder: (context, state) => const ProductScreen(),
    );
  }
}
