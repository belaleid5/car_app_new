// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationResponseModel _$LocationResponseModelFromJson(
  Map<String, dynamic> json,
) => LocationResponseModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
);

Map<String, dynamic> _$LocationResponseModelToJson(
  LocationResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'lat': instance.lat,
  'lng': instance.lng,
};
