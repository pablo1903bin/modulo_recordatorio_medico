//
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_state.freezed.dart';

@freezed
class CounterState with _$CounterState {
  factory CounterState({
    @Default(0) int value,
    @Default(true) bool mostrarContador,
  }) = _CounterState;
}

