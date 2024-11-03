
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_failure.freezed.dart';

@freezed
class TokenFailure with _$TokenFailure {

  factory TokenFailure.notFound() = _TokenFailure;

  factory TokenFailure.cancelo() = _TokenCanceloFailure;
}