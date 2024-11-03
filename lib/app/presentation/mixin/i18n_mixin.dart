

import 'package:get_it/get_it.dart';

import '../../../gen/i18n/translations_mobil.g.dart';
import '../singletons/i18n_singleton.dart';

mixin I18NMixin {
  TranslationsCommons get i18n {
    assert(i18nSingleton.translation != null ,"No hay objeto Translation");
    return i18nSingleton.translation!;
  }

  I18nSingleton get i18nSingleton {
    return GetIt.instance<I18nSingleton>();
  }

  
}