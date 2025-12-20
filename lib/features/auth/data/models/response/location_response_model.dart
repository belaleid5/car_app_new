import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_response_model.g.dart';
@JsonSerializable()
class CountryModel {
  final int id;
  final String country;
  final String abbreviation;

  CountryModel({
    required this.id,
    required this.country,
    required this.abbreviation,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}







@JsonSerializable()
class LocationModel {
  final int id;
  final String name;
  final double lat;
  final double lng;

  LocationModel({
    required this.id,
    required this.name,
    required this.lat,
    required this.lng,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}