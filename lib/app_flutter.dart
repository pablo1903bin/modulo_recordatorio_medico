

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_module/app/presentation/controller/i18n_provider.dart';
import 'package:provider/provider.dart';
import 'package:timezone/data/latest_all.dart' as tz;

import 'app.dart';
import 'app/data/providers/global/provedor_global.dart';
import 'app/domain/models/sesion/sesion_state.dart';
import 'app/domain/singletons/setup_locator.dart';
import 'app/presentation/controller/native_channel_controller.dart';
import 'app/presentation/controller/states/native_channel_state.dart';

class AppFlutterModule extends StatelessWidget {
  const AppFlutterModule({super.key});


  @override
  Widget build(BuildContext context) {

    const platform = MethodChannel('pablo_app/channel');

    WidgetsFlutterBinding.ensureInitialized();
      tz.initializeTimeZones();
    //Activar para usar lenguaje del dispositivo
    //LocaleSettings.useDeviceLocale();
    String hostLocal = "http://192.168.100.5:8080/gateway/api";
    String webServer = "http://45.33.13.164:8080/gateway/api";
    // Configura GetIt al inicio
    AppDependencies.load(
      hostApi: webServer,
      sesion: SesionState(
        const String.fromEnvironment("S_USER"),
        const String.fromEnvironment("S_SESSION_ID"),
        [const String.fromEnvironment("COOKIES")]
      ),
      mocEnabled: true,
    );

    return ProvedorGlobal(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<NativeChannelController>(
            create: (context) => NativeChannelController(NativeChannelState(platform: platform)),
          ),
          ChangeNotifierProvider(create: (_)=> I18nProvider("") ),
        ],
        child: MyApp(),
      ),
    );
  }
}
