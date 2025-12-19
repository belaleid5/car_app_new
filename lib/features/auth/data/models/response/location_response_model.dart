
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_response_model.g.dart';
@JsonSerializable()
class LocationResponseModel {

  const LocationResponseModel({
    required this.id,
    required this.name,
    required this.lat,
    required this.lng,
  });

  factory LocationResponseModel.fromJson(Map<String, dynamic> json)=>_$LocationResponseModelFromJson(json);
  final int id;
  final String name;
  final double lat;
  final double lng;
}
