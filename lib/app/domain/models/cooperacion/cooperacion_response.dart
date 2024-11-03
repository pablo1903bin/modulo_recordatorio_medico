import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooperacion_response.freezed.dart';
part 'cooperacion_response.g.dart';

@freezed
class CooperacionResponse with _$CooperacionResponse {
  const factory CooperacionResponse({
    required int id,
    required String nombre,
    required String descripcion,
    @JsonKey(name: 'monto_objetivo') required double montoObjetivo,
    @JsonKey(name: 'fecha_inicio') required DateTime fechaInicio,
    @JsonKey(name: 'fecha_fin') required DateTime fechaFin,
    @JsonKey(name: 'fecha_creacion') required DateTime fechaCreacion,
    required String estado,
    @JsonKey(name: 'created_by') required int createdBy,
  }) = _CooperacionResponse;

  factory CooperacionResponse.fromJson(Map<String, dynamic> json) =>
      _$CooperacionResponseFromJson(json);
}
