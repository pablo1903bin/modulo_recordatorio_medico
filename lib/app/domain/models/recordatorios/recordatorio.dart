import 'package:freezed_annotation/freezed_annotation.dart';

part 'recordatorio.freezed.dart';
part 'recordatorio.g.dart';

@freezed
class Recordatorio with _$Recordatorio {
  const factory Recordatorio({
     @Default(0) int id,
     @Default(0) int user,
     @Default("") String nombreMedicamento,
     @Default("") String? descripcion,
     @Default("") String? dosis,
     @Default("") String? metodoAdministracion,
     @Default(0) int? frecuenciaUnidades,
     @Default("") String? frecuenciaIntervalo,
     @Default("") String? fechaInicio,
     @Default("") String? horaInicio,
     @Default("") String? duracionTratamiento,
     @Default("") String? estado,
     @Default("") String? fechaCreacion,
  }) = _Recordatorio;

  factory Recordatorio.fromJson(Map<String, dynamic> json) =>
      _$RecordatorioFromJson(json);
}
