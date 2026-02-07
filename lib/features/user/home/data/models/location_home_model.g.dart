// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationHomeModel _$LocationHomeModelFromJson(Map<String, dynamic> json) =>
    LocationHomeModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      latitude: (json['lat'] as num?)?.toDouble(),
      longitude: (json['lng'] as num?)?.toDouble(),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$LocationHomeModelToJson(LocationHomeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.latitude,
      'lng': instance.longitude,
      'address': instance.address,
    };
