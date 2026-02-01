import 'package:car_app_new/features/auth/data/models/response/location_model.dart';
import 'package:car_app_new/features/auth/data/models/response/pagination_location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LocationResponseModel {

  LocationResponseModel({
    required this.data,
    this.links,
    this.meta,
  });

  factory LocationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseModelFromJson(json);
  final List<LocationModel> data;
  final PaginationLinks? links;
  final PaginationMeta? meta;

  Map<String, dynamic> toJson() => _$LocationResponseModelToJson(this);
}
