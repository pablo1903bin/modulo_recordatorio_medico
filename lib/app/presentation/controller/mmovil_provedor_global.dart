


import 'package:my_flutter_module/app/presentation/controller/i18n_provider.dart';
import 'package:my_flutter_module/app/presentation/modules/home/controllers/home_controller.dart';
import 'package:my_flutter_module/app/presentation/modules/home/controllers/state/home_state.dart';
import 'package:my_flutter_module/app/presentation/routes/go_route_helper.dart';
import 'package:provider/provider.dart';

class MmovilProvedorGlobal extends MultiProvider {

  MmovilProvedorGlobal({super.key, super.child}) : super(
    providers: [
      ChangeNotifierProvider(create: (_)=> I18nProvider("") ),
              GoRouteHelper.c<HomeController>(() => HomeController(const HomeState(level: 0))),
    ]
  );

}
