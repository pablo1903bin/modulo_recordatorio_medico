

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mask_field_state.freezed.dart';

@freezed
class MaskFieldState with _$MaskFieldState {

  factory MaskFieldState(
    {
      @Default(true) bool enmascarar,
      @Default(false) bool forzarError,
    }
  ) = _MaskFieldState;

}

@freezed
class MaskFieldResult with _$MaskFieldResult {

  factory MaskFieldResult({
    @Default(false) bool length,
    @Default(false) bool palabrasClave,
    @Default(false) bool mayuscula,
    @Default(false) bool minuscula,
    @Default(false) bool numero,
    @Default(false) bool espacios,
    @Default(false) bool identicos,
    @Default(false) bool consecutivos,
  }) = _MaskFieldResult;

}