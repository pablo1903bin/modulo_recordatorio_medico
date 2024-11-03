
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_flutter_module/app/presentation/mixin/i18n_mixin.dart';
import 'package:my_flutter_module/app/presentation/singletons/i18n_commons_singleton.dart';
import 'package:my_flutter_module/gen/i18n/translations_mobil.g.dart';

import 'app/presentation/routes/routes.dart';

class MyApp extends StatelessWidget with Routes, I18NMixin {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    i18nSingleton.update(TranslationsCommons.of(context));
    GetIt.instance<I18nCommonsSingleton>().update(TranslationProvider.of(context).locale.flutterLocale.languageCode);



    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,

      // Establecer el idioma actual
      locale: TranslationProvider.of(context).locale.flutterLocale, // No definir para tomar lenguaje del teléfono

    );
  }
}
