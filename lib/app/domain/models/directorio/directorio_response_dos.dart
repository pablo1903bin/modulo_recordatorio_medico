import 'package:freezed_annotation/freezed_annotation.dart';

part 'directorio_response_dos.freezed.dart';
part 'directorio_response_dos.g.dart';

@freezed
class DirectorioResponseDos with _$DirectorioResponseDos {
  factory DirectorioResponseDos({
    @JsonKey(name: "mii") @Default(0) int mii, // Valor predeterminado si es nulo
    @JsonKey(name: "icA") String? icA, // Puede ser nulo
    @JsonKey(name: "n") String? nombre, // Puede ser nulo
    @JsonKey(name: "cR") String? codigoRespuesta, // Puede ser nulo
    @JsonKey(name: "llt") String? ultimaTransaccion, // Puede ser nulo
    @JsonKey(name: "sessionId") String? sessionId, // Puede ser nulo
    @JsonKey(name: "spei247") @Default(0) int spei247, // Valor predeterminado si es nulo
  }) = _DirectorioResponseDos;

  factory DirectorioResponseDos.fromJson(Map<String, dynamic> json) =>
      _$DirectorioResponseDosFromJson(json);
}
