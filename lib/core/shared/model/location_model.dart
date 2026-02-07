import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {

  LocationModel({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.address,
  });
  final int? id;
  final String? name;
  final double? latitude;
  final double? longitude;
  final String? address;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
