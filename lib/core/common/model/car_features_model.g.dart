// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_features_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarFeatureModel _$CarFeatureModelFromJson(Map<String, dynamic> json) =>
    _CarFeatureModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      value: json['value'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CarFeatureModelToJson(_CarFeatureModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'image': instance.image,
    };
