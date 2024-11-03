import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_indicator_state.freezed.dart';

@freezed
class LoadingIndicatorState with _$LoadingIndicatorState {
  factory LoadingIndicatorState({
    @Default(false) bool cargando,
    @Default(false) bool activo,
    @Default(false)  bool visible,
  }) = _LoadingIndicatorState;
}
