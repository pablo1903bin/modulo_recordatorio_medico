

import 'package:freezed_annotation/freezed_annotation.dart';

part 'boton_cargando_state.freezed.dart';

@freezed
class BotonCargandoState with _$BotonCargandoState {

  factory BotonCargandoState({
    @Default(false) bool cargando,
    @Default(false) bool activo,
    @Default(false)  bool visible,
  }) = _BotonCargandoState;
}
