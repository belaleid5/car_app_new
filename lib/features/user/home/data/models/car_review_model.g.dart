// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => _ReviewModel(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  review: json['review'] as String,
  userImage: json['user_image'] as String,
  rate: (json['rate'] as num).toInt(),
);

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'review': instance.review,
      'user_image': instance.userImage,
      'rate': instance.rate,
    };
