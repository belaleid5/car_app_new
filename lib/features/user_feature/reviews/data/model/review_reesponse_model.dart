import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_response_model.freezed.dart';
part 'review_response_model.g.dart';

@freezed
sealed class ReviewResponseModel with _$ReviewResponseModel {
  const factory ReviewResponseModel({
    required String message,
    required int id,
    required String username,
    required String review,
    @JsonKey(name: 'user_image') required String userImage,
    required int rate,
  }) = _ReviewResponseModel;

  factory ReviewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseModelFromJson(json);
}
