import 'package:car_app_new/features/user/home/data/models/brand_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands_response_model.freezed.dart';
part 'brands_response_model.g.dart';

@freezed
sealed class BrandsResponseModel with _$BrandsResponseModel {
  const factory BrandsResponseModel({
    required List<BrandModel> data,
    required BrandsMeta meta,
  }) = _BrandsResponseModel;

  factory BrandsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsResponseModelFromJson(json);
}

@freezed
sealed class BrandsMeta with _$BrandsMeta {
  const factory BrandsMeta({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'per_page') int? perPage,
    int? total,
  }) = _BrandsMeta;

  factory BrandsMeta.fromJson(Map<String, dynamic> json) =>
      _$BrandsMetaFromJson(json);
}