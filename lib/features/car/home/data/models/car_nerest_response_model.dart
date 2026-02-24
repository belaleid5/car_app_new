
import 'package:car_app_new/features/auth/data/models/response/pagination_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'car_nerst_model.dart';

part 'car_nerest_response_model.freezed.dart';
part 'car_nerest_response_model.g.dart';

@freezed
sealed class CarsNerestResponseModel with _$CarsNerestResponseModel {
  const factory CarsNerestResponseModel({
    required List<CarNerstModel> data,
    required PaginationLinks links,
    required PaginationMeta meta,
  }) = _CarsNerestResponseModel;

  factory CarsNerestResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CarsNerestResponseModelFromJson(json);
}