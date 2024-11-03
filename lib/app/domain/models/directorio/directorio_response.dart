import 'package:freezed_annotation/freezed_annotation.dart';

part 'directorio_response.freezed.dart';
part 'directorio_response.g.dart';

@freezed
class DirectorioResponse with _$DirectorioResponse {
  factory DirectorioResponse({
    @JsonKey(name: 'mii') @Default(0) int mii,  
    @JsonKey(name: 'icA') @Default("") String icA,  
    @JsonKey(name: 'n') @Default("") String n, 
    @JsonKey(name: 'cR') @Default("") String codigo,  
    @JsonKey(name: 'llt') @Default("") String llt,
    @JsonKey(name: 'sessionId') String? sessionID, 
    @JsonKey(name: 'spei247') @Default(0) int spei247, 
    @JsonKey(name: 'cs') @Default([]) List<Contrato>? cs, 
  }) = _DirectorioResponse;

  factory DirectorioResponse.fromJson(Map<String, dynamic> json) =>
      _$DirectorioResponseFromJson(json);
}

@freezed
class Contrato with _$Contrato {
  factory Contrato({
    @JsonKey(name: 'clabe') @Default("") String clabe, 
    @JsonKey(name: 'sV') @Default("") String sV,  
    @JsonKey(name: 'svs') @Default([]) List<int>? svs,  
    @JsonKey(name: "nC") @Default("") String nC,
    @JsonKey(name: "iC") @Default("") String iC,
    @JsonKey(name: "refNumContrato") @Default("") String refNumContrato,
  }) = _Contrato;

  factory Contrato.fromJson(Map<String, dynamic> json) =>
      _$ContratoFromJson(json);
}
