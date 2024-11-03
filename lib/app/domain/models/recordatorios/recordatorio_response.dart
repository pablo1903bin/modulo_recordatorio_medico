import 'package:freezed_annotation/freezed_annotation.dart';

import 'recordatorio.dart';

part 'recordatorio_response.freezed.dart';
part 'recordatorio_response.g.dart';

@freezed
class RecordatorioResponse with _$RecordatorioResponse {
  factory RecordatorioResponse({
    String? codigo,
     String? mensaje,
     List<Recordatorio>? data,
  }) = _RecordatorioResponse;

  factory RecordatorioResponse.fromJson(Map<String, dynamic> json) =>
      _$RecordatorioResponseFromJson(json);
}
