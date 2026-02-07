import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_features_model.freezed.dart';
part 'car_features_model.g.dart';

@freezed
 sealed  class CarFeatureModel with _$CarFeatureModel {
  const factory CarFeatureModel({
    required int id,
    required String name,
    required String value,
    required String image,
  }) = _CarFeatureModel;

  factory CarFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$CarFeatureModelFromJson(json);
}
