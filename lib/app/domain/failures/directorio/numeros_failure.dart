



import 'package:freezed_annotation/freezed_annotation.dart';

import '../http/http_request_failure.dart';

part 'numeros_failure.freezed.dart';

@freezed
class NumerosFailure with _$NumerosFailure {

  const factory NumerosFailure.httpFailure(
    HttpRequestFailure httpFailure
  ) = _NumerosFailure;


}