


import '../../../gen/i18n/translations_mobil.g.dart';

class I18nCommonsSingleton {
  TranslationsCommons? _translation;

  I18nCommonsSingleton({translation}):_translation=translation;

  TranslationsCommons? get translation {
    return _translation;
  }

  bool isLocale(AppLocale locale){
    return LocaleSettings.currentLocale == locale;
  }

  String get lenguaje {
    return LocaleSettings.currentLocale.flutterLocale.languageCode;
  }

  void update(String current){
    if(current == "en"){
        _translation  = AppLocale.en.build();
      }
      if(current == "es"){
        _translation  = AppLocale.es.build();
      }
  }
}
