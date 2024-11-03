import 'package:my_flutter_module/app/data/providers/auth/state/user_auth_state.dart';
import 'package:provider/provider.dart';

import '../../../presentation/modules/productos/controllers/producto_controller.dart';
import '../../../presentation/modules/sign_in/controllers/auth_controller.dart';

class ProvedorGlobal extends MultiProvider {
  ProvedorGlobal({super.key, super.child})
      : super(providers: [
          ChangeNotifierProvider(create: (_) => AuthController(UserAuthState())),
          ChangeNotifierProvider<ProductoController>(
            create: (context) => ProductoController(),
          ),
        ]);
}
