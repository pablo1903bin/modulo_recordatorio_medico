


import '../../../../data/http/http.dart';
import '../../../failures/http/http_request_failure.dart';

mixin HttpFailureMapper {
  T mapFailure<T>(
      HttpFailure error,
      T Function(HttpRequestFailure failure) failureWith
    ){

    if(error.exception != null){
        if(error.exception is NetworkException){
          return  failureWith(HttpRequestFailure.network());
        }

        if(error.exception is MMovilV1BusinessException){
          return  failureWith(HttpRequestFailure.businessError(
              (error.exception! as MMovilV1BusinessException).codigo, 
              (error.exception! as MMovilV1BusinessException).mensaje
            )
          );
        }

        return failureWith(HttpRequestFailure.custom(-1, "${error.exception}"));
        //return  failureWith(HttpRequestFailure.internalError());
      }

      if(error.statusCode != null){
        switch(error.statusCode){
          case 500: return failureWith(HttpRequestFailure.internalError());
          case 400: return failureWith(HttpRequestFailure.badRequest());
          case 401: return  failureWith(HttpRequestFailure.unauthorized());
          case 404: return  failureWith(HttpRequestFailure.notFound());

          case -1: return  failureWith(HttpRequestFailure.network());
        }
      }

      return  failureWith(HttpRequestFailure.unknown());
  }
}