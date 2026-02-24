import 'package:car_app_new/core/shared/model/location_model.dart';
import 'package:car_app_new/core/common/model/pagination_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_response_model.freezed.dart';
part 'location_response_model.g.dart';

@freezed
sealed class LocationResponseModel with _$LocationResponseModel {
  const factory LocationResponseModel({
    required List<LocationModel> data,
    PaginationLinks? links,
    PaginationMeta? meta,
  }) = _LocationResponseModel;

  factory LocationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseModelFromJson(json);
}
