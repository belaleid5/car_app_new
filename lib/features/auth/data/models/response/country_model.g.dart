// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryResponseModel _$CountryResponseModelFromJson(
  Map<String, dynamic> json,
) => CountryResponseModel(
  id: (json['id'] as num).toInt(),
  country: json['country'] as String,
  abbreviation: json['abbreviation'] as String,
);

Map<String, dynamic> _$CountryResponseModelToJson(
  CountryResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'country': instance.country,
  'abbreviation': instance.abbreviation,
};
