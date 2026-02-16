import 'package:car_app_new/features/user/home/data/models/cars_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars_response_model.freezed.dart';
part 'cars_response_model.g.dart';

@freezed
sealed class CarsResponseModel with _$CarsResponseModel {
  const factory CarsResponseModel({
    required List<CarsModel> data,
    required CarsMeta meta,
  }) = _CarsResponseModel;

  factory CarsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CarsResponseModelFromJson(json);
}

@freezed
sealed class CarsMeta with _$CarsMeta {
  const factory CarsMeta({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'per_page') int? perPage,
    int? total,
  }) = _CarsMeta;

  factory CarsMeta.fromJson(Map<String, dynamic> json) =>
      _$CarsMetaFromJson(json);
}