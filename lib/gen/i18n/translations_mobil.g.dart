/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 80 (40 per locale)
///
/// Built on 2024-10-25 at 05:07 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.es;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.es) // set locale
/// - Locale locale = AppLocale.es.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.es) // locale check
enum AppLocale with BaseAppLocale<AppLocale, TranslationsCommons> {
	es(languageCode: 'es', build: TranslationsCommons.build),
	en(languageCode: 'en', build: _TranslationsMobilEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, TranslationsCommons> build;

	/// Gets current instance managed by [LocaleSettings].
	TranslationsCommons get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of text).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = text.someKey.anotherKey;
/// String b = text['someKey.anotherKey']; // Only for edge cases!
TranslationsCommons get text => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final text = TranslationsCommons.of(context); // Get text variable.
/// String a = text.someKey.anotherKey; // Use text variable.
/// String b = text['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, TranslationsCommons> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, TranslationsCommons> of(BuildContext context) => InheritedLocaleData.of<AppLocale, TranslationsCommons>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.text.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	TranslationsCommons get text => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, TranslationsCommons> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, TranslationsCommons> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class TranslationsCommons implements BaseTranslations<AppLocale, TranslationsCommons> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final text = TranslationsCommons.of(context);
	static TranslationsCommons of(BuildContext context) => InheritedLocaleData.of<AppLocale, TranslationsCommons>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCommons.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, TranslationsCommons> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsCommons _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsMobilBloqueoEs bloqueo = _TranslationsMobilBloqueoEs._(_root);
	late final _TranslationsMobilCommonsEs commons = _TranslationsMobilCommonsEs._(_root);
	late final _TranslationsMobilDirectorioEs directorio = _TranslationsMobilDirectorioEs._(_root);
	late final _TranslationsMobilHttpErrorsEs http_errors = _TranslationsMobilHttpErrorsEs._(_root);
	late final _TranslationsMobilLoguinEs loguin = _TranslationsMobilLoguinEs._(_root);
}

// Path: bloqueo
class _TranslationsMobilBloqueoEs {
	_TranslationsMobilBloqueoEs._(this._root);

	final TranslationsCommons _root; // ignore: unused_field

	// Translations
	String get titulo => '¿Está seguro de que desea bloquear la aplicación?';
	String get boton_bloqueo => 'Bloquear';
	String get descripcion_bloqueo => 'Al bloquear la aplicación, protegerás tu información y evitarás el acceso no autorizado. Podrás desbloquearla fácilmente al iniciar sesión nuevamente.';
	String get titulo_exito_bloqueo => 'Bloqueo Exitoso';
	String get titulo_error_bloqueo => 'Error al Bloquear';
	String get descripcion_bloqueo_exitoso => 'Su cuenta ha sido bloqueada con éxito.';
	String get descripcion_bloqueo_error => 'Hubo un error al intentar bloquear su cuenta.';
	String get resultado_aceptar => 'Aceptar';
	String get cerrar_sesion => 'Sesión cerrada correctamente';
	String get token_no_encontrado => 'Token no encontrado. Intenta de nuevo';
	String get cancelar_token => 'Operación cancelada por el usuario';
}

// Path: commons
class _TranslationsMobilCommonsEs {
	_TranslationsMobilCommonsEs._(this._root);

	final TranslationsCommons _root; // ignore: unused_field

	// Translations
	String get version => '1';
}

// Path: directorio
class _TranslationsMobilDirectorioEs {
	_TranslationsMobilDirectorioEs._(this._root);

	final TranslationsCommons _root; // ignore: unused_field

	// Translations
	String get titulo => 'Directorio';
	String get contratos_null => 'No se encontraron contratos';
	String get contrato => 'Contrato';
	String get titular_desconocido => 'Titular desconocido';
	String get error_data_cuenta => 'Ocurrió un error al consultar los datos de cuentas';
	String get error_inesperado => 'Ocurrió un error inesperado';
	String get sin_servicios => 'No se encontraron servicios';
	String get error_directorio => 'Error en directorio';
	String get error_cuenta => 'Error al recuperar cuentas';
	String get error_servicios => 'Error de servicios';
	String get reintentar => 'reintentar';
}

// Path: http_errors
class _TranslationsMobilHttpErrorsEs {
	_TranslationsMobilHttpErrorsEs._(this._root);

	final TranslationsCommons _root; // ignore: unused_field

	// Translations
	String get not_found => 'No encontrado';
	String get network => 'Sin acceso a internet';
	String get unauthorized => 'Sin autorización';
	String get unknown => 'Error desconocido';
	String get internalError => 'Error interno del servidor';
	String get badRequest => 'Petición invalida';
}

// Path: loguin
class _TranslationsMobilLoguinEs {
	_TranslationsMobilLoguinEs._(this._root);

	final TranslationsCommons _root; // ignore: unused_field

	// Translations
	String get app_title => 'SaludAlDía';
	String get welcome_back => '¡Bienvenido de nuevo!';
	String get forgot_password => '¿Olvidaste tu contraseña?';
	String get new_user => '¿Eres nuevo usuario?';
	String get register_now => 'Regístrate ahora';
	late final _TranslationsMobilLoguinAuthenticationErrorEs authentication_error = _TranslationsMobilLoguinAuthenticationErrorEs._(_root);
	late final _TranslationsMobilLoguinUnexpectedErrorEs unexpected_error = _TranslationsMobilLoguinUnexpectedErrorEs._(_root);
	String get sign_in_button => 'Iniciar sesión';
	String get logo_alt_text => 'Logotipo de la Tesorería Escolar';
}

// Path: loguin.authentication_error
class _TranslationsMobilLoguinAuthenticationErrorEs {
	_TranslationsMobilLoguinAuthenticationErrorEs._(this._root);

	final TranslationsCommons _root; // ignore: unused_field

	// Translations
	String get title => 'Error de autenticación';
	String get content => 'Usuario o contraseña incorrectos. Por favor, intenta nuevamente.';
}

// Path: loguin.unexpected_error
class _TranslationsMobilLoguinUnexpectedErrorEs {
	_TranslationsMobilLoguinUnexpectedErrorEs._(this._root);

	final TranslationsCommons _root; // ignore: unused_field

	// Translations
	String get title => 'Error';
	String get content => 'Ocurrió un error inesperado. Por favor, inténtalo de nuevo.';
}

// Path: <root>
class _TranslationsMobilEn implements TranslationsCommons {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsMobilEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, TranslationsCommons> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _TranslationsMobilEn _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsMobilBloqueoEn bloqueo = _TranslationsMobilBloqueoEn._(_root);
	@override late final _TranslationsMobilCommonsEn commons = _TranslationsMobilCommonsEn._(_root);
	@override late final _TranslationsMobilDirectorioEn directorio = _TranslationsMobilDirectorioEn._(_root);
	@override late final _TranslationsMobilHttpErrorsEn http_errors = _TranslationsMobilHttpErrorsEn._(_root);
	@override late final _TranslationsMobilLoguinEn loguin = _TranslationsMobilLoguinEn._(_root);
}

// Path: bloqueo
class _TranslationsMobilBloqueoEn implements _TranslationsMobilBloqueoEs {
	_TranslationsMobilBloqueoEn._(this._root);

	@override final _TranslationsMobilEn _root; // ignore: unused_field

	// Translations
	@override String get titulo => 'Are you sure you want to lock the application?';
	@override String get boton_bloqueo => 'Lock';
	@override String get descripcion_bloqueo => 'By locking the application, you will protect your information and prevent unauthorized access. You can easily unlock it by logging in again.';
	@override String get titulo_exito_bloqueo => 'Lock Successful';
	@override String get titulo_error_bloqueo => 'Error Locking';
	@override String get descripcion_bloqueo_exitoso => 'Your account has been successfully locked.';
	@override String get descripcion_bloqueo_error => 'There was an error trying to lock your account.';
	@override String get resultado_aceptar => 'Accept';
	@override String get cerrar_sesion => 'Session closed successfully';
	@override String get token_no_encontrado => 'Token not found. Please try again';
	@override String get cancelar_token => 'Operation canceled by the user';
}

// Path: commons
class _TranslationsMobilCommonsEn implements _TranslationsMobilCommonsEs {
	_TranslationsMobilCommonsEn._(this._root);

	@override final _TranslationsMobilEn _root; // ignore: unused_field

	// Translations
	@override String get version => '1';
}

// Path: directorio
class _TranslationsMobilDirectorioEn implements _TranslationsMobilDirectorioEs {
	_TranslationsMobilDirectorioEn._(this._root);

	@override final _TranslationsMobilEn _root; // ignore: unused_field

	// Translations
	@override String get titulo => 'Directory';
	@override String get contratos_null => 'No contracts were found';
	@override String get contrato => 'Contract';
	@override String get titular_desconocido => 'Unknown account holder';
	@override String get error_data_cuenta => 'An error occurred while retrieving account data';
	@override String get error_inesperado => 'An unexpected error occurred';
	@override String get sin_servicios => 'No services were found';
	@override String get error_directorio => 'Directory Error';
	@override String get error_cuenta => 'Error retrieving accounts';
	@override String get error_servicios => 'Service Error';
	@override String get reintentar => 'retry';
}

// Path: http_errors
class _TranslationsMobilHttpErrorsEn implements _TranslationsMobilHttpErrorsEs {
	_TranslationsMobilHttpErrorsEn._(this._root);

	@override final _TranslationsMobilEn _root; // ignore: unused_field

	// Translations
	@override String get not_found => 'Not found';
	@override String get network => 'No internet access';
	@override String get unauthorized => 'Unauthorized';
	@override String get unknown => 'Unknown error';
	@override String get internalError => 'Internal server error';
	@override String get badRequest => 'Invalid request';
}

// Path: loguin
class _TranslationsMobilLoguinEn implements _TranslationsMobilLoguinEs {
	_TranslationsMobilLoguinEn._(this._root);

	@override final _TranslationsMobilEn _root; // ignore: unused_field

	// Translations
	@override String get app_title => 'HealthOnTime';
	@override String get welcome_back => 'Welcome back!';
	@override String get forgot_password => 'Forgot your password?';
	@override String get new_user => 'Are you a new user?';
	@override String get register_now => 'Register now';
	@override late final _TranslationsMobilLoguinAuthenticationErrorEn authentication_error = _TranslationsMobilLoguinAuthenticationErrorEn._(_root);
	@override late final _TranslationsMobilLoguinUnexpectedErrorEn unexpected_error = _TranslationsMobilLoguinUnexpectedErrorEn._(_root);
	@override String get sign_in_button => 'Sign In';
	@override String get logo_alt_text => 'School Treasury Logo';
}

// Path: loguin.authentication_error
class _TranslationsMobilLoguinAuthenticationErrorEn implements _TranslationsMobilLoguinAuthenticationErrorEs {
	_TranslationsMobilLoguinAuthenticationErrorEn._(this._root);

	@override final _TranslationsMobilEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Authentication Error';
	@override String get content => 'Incorrect username or password. Please try again.';
}

// Path: loguin.unexpected_error
class _TranslationsMobilLoguinUnexpectedErrorEn implements _TranslationsMobilLoguinUnexpectedErrorEs {
	_TranslationsMobilLoguinUnexpectedErrorEn._(this._root);

	@override final _TranslationsMobilEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Error';
	@override String get content => 'An unexpected error occurred. Please try again.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on TranslationsCommons {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'bloqueo.titulo': return '¿Está seguro de que desea bloquear la aplicación?';
			case 'bloqueo.boton_bloqueo': return 'Bloquear';
			case 'bloqueo.descripcion_bloqueo': return 'Al bloquear la aplicación, protegerás tu información y evitarás el acceso no autorizado. Podrás desbloquearla fácilmente al iniciar sesión nuevamente.';
			case 'bloqueo.titulo_exito_bloqueo': return 'Bloqueo Exitoso';
			case 'bloqueo.titulo_error_bloqueo': return 'Error al Bloquear';
			case 'bloqueo.descripcion_bloqueo_exitoso': return 'Su cuenta ha sido bloqueada con éxito.';
			case 'bloqueo.descripcion_bloqueo_error': return 'Hubo un error al intentar bloquear su cuenta.';
			case 'bloqueo.resultado_aceptar': return 'Aceptar';
			case 'bloqueo.cerrar_sesion': return 'Sesión cerrada correctamente';
			case 'bloqueo.token_no_encontrado': return 'Token no encontrado. Intenta de nuevo';
			case 'bloqueo.cancelar_token': return 'Operación cancelada por el usuario';
			case 'commons.version': return '1';
			case 'directorio.titulo': return 'Directorio';
			case 'directorio.contratos_null': return 'No se encontraron contratos';
			case 'directorio.contrato': return 'Contrato';
			case 'directorio.titular_desconocido': return 'Titular desconocido';
			case 'directorio.error_data_cuenta': return 'Ocurrió un error al consultar los datos de cuentas';
			case 'directorio.error_inesperado': return 'Ocurrió un error inesperado';
			case 'directorio.sin_servicios': return 'No se encontraron servicios';
			case 'directorio.error_directorio': return 'Error en directorio';
			case 'directorio.error_cuenta': return 'Error al recuperar cuentas';
			case 'directorio.error_servicios': return 'Error de servicios';
			case 'directorio.reintentar': return 'reintentar';
			case 'http_errors.not_found': return 'No encontrado';
			case 'http_errors.network': return 'Sin acceso a internet';
			case 'http_errors.unauthorized': return 'Sin autorización';
			case 'http_errors.unknown': return 'Error desconocido';
			case 'http_errors.internalError': return 'Error interno del servidor';
			case 'http_errors.badRequest': return 'Petición invalida';
			case 'loguin.app_title': return 'SaludAlDía';
			case 'loguin.welcome_back': return '¡Bienvenido de nuevo!';
			case 'loguin.forgot_password': return '¿Olvidaste tu contraseña?';
			case 'loguin.new_user': return '¿Eres nuevo usuario?';
			case 'loguin.register_now': return 'Regístrate ahora';
			case 'loguin.authentication_error.title': return 'Error de autenticación';
			case 'loguin.authentication_error.content': return 'Usuario o contraseña incorrectos. Por favor, intenta nuevamente.';
			case 'loguin.unexpected_error.title': return 'Error';
			case 'loguin.unexpected_error.content': return 'Ocurrió un error inesperado. Por favor, inténtalo de nuevo.';
			case 'loguin.sign_in_button': return 'Iniciar sesión';
			case 'loguin.logo_alt_text': return 'Logotipo de la Tesorería Escolar';
			default: return null;
		}
	}
}

extension on _TranslationsMobilEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'bloqueo.titulo': return 'Are you sure you want to lock the application?';
			case 'bloqueo.boton_bloqueo': return 'Lock';
			case 'bloqueo.descripcion_bloqueo': return 'By locking the application, you will protect your information and prevent unauthorized access. You can easily unlock it by logging in again.';
			case 'bloqueo.titulo_exito_bloqueo': return 'Lock Successful';
			case 'bloqueo.titulo_error_bloqueo': return 'Error Locking';
			case 'bloqueo.descripcion_bloqueo_exitoso': return 'Your account has been successfully locked.';
			case 'bloqueo.descripcion_bloqueo_error': return 'There was an error trying to lock your account.';
			case 'bloqueo.resultado_aceptar': return 'Accept';
			case 'bloqueo.cerrar_sesion': return 'Session closed successfully';
			case 'bloqueo.token_no_encontrado': return 'Token not found. Please try again';
			case 'bloqueo.cancelar_token': return 'Operation canceled by the user';
			case 'commons.version': return '1';
			case 'directorio.titulo': return 'Directory';
			case 'directorio.contratos_null': return 'No contracts were found';
			case 'directorio.contrato': return 'Contract';
			case 'directorio.titular_desconocido': return 'Unknown account holder';
			case 'directorio.error_data_cuenta': return 'An error occurred while retrieving account data';
			case 'directorio.error_inesperado': return 'An unexpected error occurred';
			case 'directorio.sin_servicios': return 'No services were found';
			case 'directorio.error_directorio': return 'Directory Error';
			case 'directorio.error_cuenta': return 'Error retrieving accounts';
			case 'directorio.error_servicios': return 'Service Error';
			case 'directorio.reintentar': return 'retry';
			case 'http_errors.not_found': return 'Not found';
			case 'http_errors.network': return 'No internet access';
			case 'http_errors.unauthorized': return 'Unauthorized';
			case 'http_errors.unknown': return 'Unknown error';
			case 'http_errors.internalError': return 'Internal server error';
			case 'http_errors.badRequest': return 'Invalid request';
			case 'loguin.app_title': return 'HealthOnTime';
			case 'loguin.welcome_back': return 'Welcome back!';
			case 'loguin.forgot_password': return 'Forgot your password?';
			case 'loguin.new_user': return 'Are you a new user?';
			case 'loguin.register_now': return 'Register now';
			case 'loguin.authentication_error.title': return 'Authentication Error';
			case 'loguin.authentication_error.content': return 'Incorrect username or password. Please try again.';
			case 'loguin.unexpected_error.title': return 'Error';
			case 'loguin.unexpected_error.content': return 'An unexpected error occurred. Please try again.';
			case 'loguin.sign_in_button': return 'Sign In';
			case 'loguin.logo_alt_text': return 'School Treasury Logo';
			default: return null;
		}
	}
}
