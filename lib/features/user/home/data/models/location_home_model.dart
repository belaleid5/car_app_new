// lib/features/user/home/data/models/location_home_model.dart

import 'package:json_annotation/json_annotation.dart';

part 'location_home_model.g.dart';

@JsonSerializable()
class LocationHomeModel {

  LocationHomeModel({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.address,
  });

  factory LocationHomeModel.fromJson(Map<String, dynamic> json) =>
      _$LocationHomeModelFromJson(json);
  final int? id;
  final String? name;
  @JsonKey(name: 'lat')
  final double? latitude;
  @JsonKey(name: 'lng')
  final double? longitude;
  final String? address;

  Map<String, dynamic> toJson() => _$LocationHomeModelToJson(this);
}