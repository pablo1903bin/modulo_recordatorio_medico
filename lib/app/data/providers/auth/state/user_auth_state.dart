


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_module/app/domain/models/loguin/user_loguin_response.dart';
import 'package:my_flutter_module/app/presentation/controller/loading_lndicator_controller.dart';

part 'user_auth_state.freezed.dart';


@freezed
class UserAuthState with _$UserAuthState {
  factory UserAuthState({

  UserLoginResponse? userResponse,
  @Default(null)  String? codigo,
  LoadingIndicatorController?  loadingIndicatorController,
  }) = _UserAuthState;
}
