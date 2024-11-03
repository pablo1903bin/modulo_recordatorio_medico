

import 'package:get_it/get_it.dart';

import '../../../gen/i18n/translations_mobil.g.dart';
import '../../domain/failures/http/http_request_failure.dart';
import '../singletons/i18n_commons_singleton.dart';

mixin HttpFailureUnwrap {

  String failureMessage(HttpRequestFailure error){

    
    TranslationsCommons i18n = GetIt.instance<I18nCommonsSingleton>().translation!;

    return error.when(notFound: ()=> i18n.http_errors.not_found, 
    network: ()=> i18n.http_errors.network, 
    unauthorized: ()=> i18n.http_errors.unauthorized, 
    unknown: ()=> i18n.http_errors.unknown, 
    internalError: ()=> i18n.http_errors.internalError, 
    badRequest: ()=> i18n.http_errors.badRequest, 
    custom: (codigo, mensaje) => mensaje ,
    businessError: (codigo, mensaje) => mensaje,
    );

  }

  void onFailure(HttpRequestFailure error, 
    {required Function(String) failure, required Function(String,String) businessError }
  ){

    TranslationsCommons i18n = GetIt.instance<I18nCommonsSingleton>().translation!;

    error.when(
      notFound: ()=> failure(i18n.http_errors.not_found), 
      network: ()=> failure(i18n.http_errors.network), 
      unauthorized: ()=> failure(i18n.http_errors.unauthorized), 
      unknown: ()=> failure(i18n.http_errors.unknown), 
      internalError: ()=> failure(i18n.http_errors.internalError), 
      badRequest: ()=> failure(i18n.http_errors.badRequest), 
      custom: (codigo, mensaje) => businessError("$codigo", mensaje) ,
      businessError: (codigo, mensaje) => businessError(codigo,mensaje),
    );
  }

  String? isSesionInvalida(HttpRequestFailure error){
    return error.when(
      notFound: ()=> null, 
      network: ()=> null, 
      unauthorized: ()=>null, 
      unknown: ()=> null, 
      internalError: ()=> null, 
      badRequest: ()=> null, 
      custom: (codigo, mensaje) => null ,
      businessError: (codigo, mensaje) { if(codigo == "SESER"){return mensaje;} return null; },
    );
  }


}