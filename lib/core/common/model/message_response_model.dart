import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_response_model.freezed.dart';
part 'message_response_model.g.dart';

@freezed
sealed class MessageResponseModel with _$MessageResponseModel {
  const factory MessageResponseModel({
    required String message,
  }) = _MessageResponseModel;

  factory MessageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseModelFromJson(json);
}
