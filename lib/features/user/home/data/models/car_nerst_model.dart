import 'package:car_app_new/core/common/model/brand_model.dart';
import 'package:car_app_new/core/common/model/car_features_model.dart';
import 'package:car_app_new/core/common/model/car_image_model.dart';
import 'package:car_app_new/core/common/model/car_review_model.dart';
import 'package:car_app_new/core/common/model/color_model.dart';
import 'package:car_app_new/core/shared/model/location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_nerst_model.freezed.dart';
part 'car_nerst_model.g.dart';

@freezed
sealed class CarNerstModel with _$CarNerstModel {
  const factory CarNerstModel({
    required int id,
    required String name,
    required String description,
    required int owner,
    @JsonKey(name: 'first_image') required String firstImage,
    required List<CarImageModel> images,
    @JsonKey(name: 'car_type') required String carType,
    required BrandModel brand,
    required ColorModel color,
    @JsonKey(name: 'car_features') required List<CarFeatureModel> carFeatures,
    @JsonKey(name: 'seating_capacity') required String seatingCapacity,
    required LocationModel location,
    @JsonKey(name: 'average_rate') required int averageRate,
    @JsonKey(name: 'is_for_rent') required bool isForRent,
    @JsonKey(name: 'daily_rent') String? dailyRent,
    @JsonKey(name: 'weekly_rent') String? weeklyRent,
    @JsonKey(name: 'monthly_rent') String? monthlyRent,
    @JsonKey(name: 'yearly_rent') String? yearlyRent,
    @JsonKey(name: 'is_for_pay') required bool isForPay,
    String? price,
    @JsonKey(name: 'available_to_book') required bool availableToBook,
    required List<ReviewModel> reviews,
    @JsonKey(name: 'reviews_count') required int reviewsCount,
    @JsonKey(name: 'reviews_avg') required double reviewsAvg,
  }) = _CarNerstModel;

  factory CarNerstModel.fromJson(Map<String, dynamic> json) =>
      _$CarNerstModelFromJson(json);
}