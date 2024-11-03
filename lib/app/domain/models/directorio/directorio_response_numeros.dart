import 'package:freezed_annotation/freezed_annotation.dart';

part 'directorio_response_numeros.freezed.dart';
part 'directorio_response_numeros.g.dart';

@freezed
class DirectorioResponseNumeros with _$DirectorioResponseNumeros {
  factory DirectorioResponseNumeros(
    {
      @Default( <Servicio>[] ) List<Servicio> ps,
      String? sessionID,
      @Default("") String cR,
    }
  ) = _DirectorioResponseNumeros;

  factory DirectorioResponseNumeros.fromJson(Map<String, dynamic> json) =>
      _$DirectorioResponseNumerosFromJson(json);
}

@freezed
class Servicio with _$Servicio {
  factory Servicio({
    @JsonKey(name: "n") @Default("") String n, 
    @JsonKey(name: "mrc") @Default("") String mrc,
    @JsonKey(name: "mr") @Default("") String mr,
  }) = _Servicio;

  factory Servicio.fromJson(Map<String, dynamic> json) =>
      _$ServicioFromJson(json);
}
