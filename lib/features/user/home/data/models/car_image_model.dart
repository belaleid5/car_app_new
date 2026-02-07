import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_image_model.freezed.dart';
part 'car_image_model.g.dart';

@freezed
sealed class CarImageModel with _$CarImageModel {
  const factory CarImageModel({
    required int id,
    required String image,
  }) = _CarImageModel;

  factory CarImageModel.fromJson(Map<String, dynamic> json) =>
      _$CarImageModelFromJson(json);
}
