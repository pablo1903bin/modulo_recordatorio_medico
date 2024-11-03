



import 'package:freezed_annotation/freezed_annotation.dart';

import '../http/http_request_failure.dart';

part 'directorio_failure.freezed.dart';

@freezed
class DirectorioFailure with _$DirectorioFailure {

  const factory DirectorioFailure.httpFailure(
    HttpRequestFailure httpFailure
  ) = _DirectorioFailure;


}