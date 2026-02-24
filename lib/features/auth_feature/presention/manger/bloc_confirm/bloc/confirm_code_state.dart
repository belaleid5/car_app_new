import 'package:car_app_new/features/auth_feature/data/models/response/confirm_code_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_code_state.freezed.dart';


@freezed
class ConfirmCodeState with _$ConfirmCodeState {
    const factory ConfirmCodeState.initial() = _Initial;
  
  const factory ConfirmCodeState.loading() = _Loading;
  
  const factory ConfirmCodeState.success({
    required ConfirmCodeResponseModel response,
  }) = _Success;
  
  const factory ConfirmCodeState.failure({
    required String error,
  })  = _Failure;
}
