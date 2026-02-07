import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_review_model.freezed.dart';
part 'car_review_model.g.dart';

@freezed
sealed class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required int id,
    required String username,
    required String review,
    @JsonKey(name: 'user_image') required String userImage,
    required int rate,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
