import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart'; // ✅ أضف الفاصلة المنقوطة

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
      _$LocationModelFromJson(json); // ✅ LocationModel مش LocationResponse

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}