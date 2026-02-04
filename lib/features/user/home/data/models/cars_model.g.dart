// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarsModel _$CarsModelFromJson(Map<String, dynamic> json) => _CarsModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  owner: (json['owner'] as num).toInt(),
  firstImage: json['first_image'] as String,
  images: (json['images'] as List<dynamic>)
      .map((e) => CarImageModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  carType: json['car_type'] as String,
  brand: BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
  color: ColorModel.fromJson(json['color'] as Map<String, dynamic>),
  carFeatures: (json['car_features'] as List<dynamic>)
      .map((e) => CarFeatureModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  seatingCapacity: json['seating_capacity'] as String,
  location: LocationResponseModel.fromJson(
    json['location'] as Map<String, dynamic>,
  ),
  averageRate: (json['average_rate'] as num).toInt(),
  isForRent: json['is_for_rent'] as bool,
  dailyRent: json['daily_rent'] as String?,
  weeklyRent: json['weekly_rent'] as String?,
  monthlyRent: json['monthly_rent'] as String?,
  yearlyRent: json['yearly_rent'] as String?,
  isForPay: json['is_for_pay'] as bool,
  price: json['price'] as String?,
  availableToBook: json['available_to_book'] as bool,
  reviews: (json['reviews'] as List<dynamic>)
      .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  reviewsCount: (json['reviews_count'] as num).toInt(),
  reviewsAvg: (json['reviews_avg'] as num).toDouble(),
);

Map<String, dynamic> _$CarsModelToJson(_CarsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'owner': instance.owner,
      'first_image': instance.firstImage,
      'images': instance.images,
      'car_type': instance.carType,
      'brand': instance.brand,
      'color': instance.color,
      'car_features': instance.carFeatures,
      'seating_capacity': instance.seatingCapacity,
      'location': instance.location,
      'average_rate': instance.averageRate,
      'is_for_rent': instance.isForRent,
      'daily_rent': instance.dailyRent,
      'weekly_rent': instance.weeklyRent,
      'monthly_rent': instance.monthlyRent,
      'yearly_rent': instance.yearlyRent,
      'is_for_pay': instance.isForPay,
      'price': instance.price,
      'available_to_book': instance.availableToBook,
      'reviews': instance.reviews,
      'reviews_count': instance.reviewsCount,
      'reviews_avg': instance.reviewsAvg,
    };
