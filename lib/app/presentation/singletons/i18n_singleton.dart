


import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/controller/i18n_provider.dart';
import 'package:provider/provider.dart';

import '../../../gen/i18n/translations_mobil.g.dart';


class I18nSingleton {
  TranslationsCommons? _translation;

  I18nSingleton(this._translation);

  TranslationsCommons? get translation {
    return _translation;
  }

  void cambiaLocale(AppLocale locale, BuildContext context){
    LocaleSettings.setLocale(locale);

    I18nProvider p = Provider.of<I18nProvider>(context, listen: false);

    p.notifica(locale.name);
  }

  bool isLocale(AppLocale locale){
    return LocaleSettings.currentLocale == locale;
  }

  String get lenguaje {
    return LocaleSettings.currentLocale.flutterLocale.languageCode;
  }

  void update(TranslationsCommons newTranslation){
    _translation = newTranslation;
  }
}

