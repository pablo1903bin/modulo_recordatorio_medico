import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_module/app/domain/models/loguin/user_data.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    UserData? userData,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
