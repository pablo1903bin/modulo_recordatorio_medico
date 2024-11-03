import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_module/app/domain/failures/http/http_request_failure.dart';

part 'recordatorio_failure.freezed.dart';

@freezed
class RecordatorioFailure with _$RecordatorioFailure {
  const factory RecordatorioFailure.httpFailure(
    HttpRequestFailure httpFailure,
  ) = _RecordatorioFailure;
}
