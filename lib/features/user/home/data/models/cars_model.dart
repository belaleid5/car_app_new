import 'package:car_app_new/features/auth/data/models/response/location_response_model.dart';
import 'package:car_app_new/features/user/home/data/models/brand_model.dart';
import 'package:car_app_new/features/user/home/data/models/car_features_model.dart';
import 'package:car_app_new/features/user/home/data/models/car_image_model.dart';
import 'package:car_app_new/features/user/home/data/models/car_review_model.dart';
import 'package:car_app_new/features/user/home/data/models/color_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars_model.freezed.dart';
part 'cars_model.g.dart';

@freezed
sealed class CarsModel with _$CarsModel {
  const factory CarsModel({
    required int id,
    required String name,
    required String description,
    required int owner,
    @JsonKey(name: 'first_image') required String firstImage,
    required List<CarImageModel> images,
    @JsonKey(name: 'car_type')
     required String carType,
    required BrandModel brand,
    required ColorModel color,
    @JsonKey(name: 'car_features') required List<CarFeatureModel> carFeatures,
    @JsonKey(name: 'seating_capacity') required String seatingCapacity,
    required LocationResponseModel location,
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
  }) = _CarsModel;

  factory CarsModel.fromJson(Map<String, dynamic> json) =>
      _$CarsModelFromJson(json);
}