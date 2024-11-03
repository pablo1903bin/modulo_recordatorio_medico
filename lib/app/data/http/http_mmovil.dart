

import 'dart:convert';

import '../../domain/functional/respuesta.dart';
import '../../domain/models/server_response/mmovil_v1_response.dart';
import '../local/http_sesion_service.dart';
import 'http.dart';


class HttpMmovil extends Http {

  final String _hostApi;

  final HttpSesionService _httpSesionService;

  HttpMmovil({
    required super.client, required hostApi,
    required httpSesionService
    }): _hostApi = hostApi,
    _httpSesionService = httpSesionService
    ;


  @override
  Uri getUrl(String uri){
    return Uri.parse("$_hostApi$uri");
  }


  Map<String,String> _addDefaultData(Map<String,String> params){
    return {
      ...params,
      "cveUsuario": _httpSesionService.sesion.usuario,
      "sessionId":_httpSesionService.sesion.sessionID
    };
  }

  Map<String,String> _addHeaders(HttpMethod method, Map<String,String> headers, bool jsonPost){
    if(jsonPost){
      headers= {
        ... headers,
        "Content-Type":"application/json"
      };
    }

    if(_httpSesionService.sesion.cookies.isNotEmpty){
      headers= {
        ... headers,
        "Cookie": _httpSesionService.sesion.cookies.join("; ")
      };
    }

    return headers;
  }

  Map<String,String> getDefaulPostHeaders(){
    return {
        "Content-Type":"application/x-www-form-urlencoded",
        "Accept":"application/json"
      };
  }

  String _getPayload(bool jsonPost, Map<String,dynamic> body){
    if(jsonPost){
      return jsonEncode(body);
    }else{
      return mapToQueryString(body);
    }
  }
  
  Future<Respuesta<HttpFailure,R>> request<R>(String uri, {
    HttpMethod method = HttpMethod.get,
    Map<String,String> headers = const {},
    Map<String,String> params = const {},
    Map<String,dynamic> body = const {},
    R Function(String)? procesaExito,
    String? jsonKey,
    bool jsonPost = false,
  }) async{

    final response = await super.requestBody(
      uri, method: method, 
      headers: _addHeaders(method, headers, jsonPost), 
      params: _addDefaultData(params), 
      body: _getPayload(jsonPost, body) 
    );

    return response.when (
      error: (err){
        final imperva = err.bodyError == null ? null : validaImperva(err.bodyError!, err.statusCode);
        if(imperva != null){
            return businessException(imperva);
        }

        return Respuesta.error(err);
      },
      exito: (body) {

        try{

          if(body.isEmpty){
            return businessException("Respuesta vacia");
          }

          final imperva = validaImperva(body, 200);

          if(imperva != null){
            return businessException(imperva);
          }

          final respuesta = MmovilV1Response.fromJson(jsonDecode(body));

          if(respuesta.codigo == "OK"){

            _httpSesionService.replaceSessionIdInNative(respuesta.sessionID);

            return _exito<R>(procesaExito, jsonKey, body);
          }

          if(respuesta.codigo == "SESER"){
            _httpSesionService.sesionTerminadaToNative(respuesta.mensaje);
          }

          return businessException(respuesta.mensaje, code: respuesta.codigo);

        }catch(e){
          return Respuesta.error(HttpFailure(statusCode: -1, exception: e ));
        }
      }
    );
  }
  
  Respuesta<HttpFailure,R> businessException<R>(String mensaje, {String code="ERROR", int statusCode=-1 }){
    return Respuesta.error(
        HttpFailure(statusCode: statusCode, exception: MMovilV1BusinessException(
          codigo: code, mensaje: mensaje
        )
      )
    );
  }


  String? validaImperva(String body, int? code){
    if(body.contains("Incapsula incident ID") || body.contains("incident_id=")){
      return "Imperva bloqueo su ip, favor de comunicarse para su desbloqueo o cambie su modo de conexión (wifi o datos móviles); incidente ID: ${getIncapsulaIncidentId(body)}";
    }
    
    if(body.contains("/_Incapsula_Resource")){
      return "Ocurrió un bloqueo en Incapsula, Favor de intentar nuevamente.  ${getIncapsulaIncidentId(body)}";
    }

    if(code != null && code == 403){
      return "Ocurrió un bloqueo, inténtelo nuevamente o cierre la aplicación y vuelva a probar $body";
    }
    return null;
  }

  String getIncapsulaIncidentId(String body) {
    String tmpBody = "";

    if(body.contains("incident_id=")){
      final ii = body.indexOf("incident_id=")+"incident_id=".length;
      tmpBody = body.substring(ii);
      tmpBody = tmpBody.substring(0, tmpBody.indexOf("&"));

      return tmpBody;
    }
    
    if(body.contains("Incapsula incident ID:")){
      final ii = body.indexOf("Incapsula incident ID:")+"Incapsula incident ID:".length;
      tmpBody = body.substring(ii);
      tmpBody = tmpBody.substring(0, tmpBody.indexOf("</iframe>"));

      return tmpBody;
    }
    
    if(body.contains("<script src=")){
      final ii = body.indexOf("<script src=")+"<script src=".length;
      tmpBody = body.substring(ii);
      tmpBody = tmpBody.substring(0, tmpBody.indexOf("></script>"));

      return tmpBody;
    }
    

    return "<No se pudo obtener ID del incidente";
  }

  String slice(String body, {required String from, required String to}) {
    int startIndex = body.indexOf(from);
    if (startIndex == -1) return "";

    startIndex += from.length;
    int endIndex = body.indexOf(to, startIndex);
    if (endIndex == -1) return "";

    return body.substring(startIndex, endIndex);
  }

  Respuesta<HttpFailure, R> _exito<R>(
    R Function(String)? procesaExito,
    String? jsonKey,
    String body
    ){
      if(procesaExito != null){
          return Respuesta.exito(procesaExito(body));
      }
      if(jsonKey != null){
        return _onExito(body, jsonKey);
      }
      return Respuesta.exito(body as R);
  }

  Respuesta<HttpFailure, R> _onExito<R>(String body, String key){
    return Respuesta.exito(getKeyFromJson(body, key)); 
  }

  R getKeyFromJson<R>(String body, String key){
    final json = jsonDecode(body);
    return json[key];
  }

  String mapToQueryString(Map<String, dynamic> map) {
  return map.entries.map((entry) {
    final key = Uri.encodeComponent(entry.key);
    final value = Uri.encodeComponent(entry.value.toString());
    return '$key=$value';
  }).join('&');
}

}