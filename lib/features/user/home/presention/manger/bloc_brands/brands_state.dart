import 'package:car_app_new/core/common/model/brands_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'brands_state.freezed.dart';



@freezed
class BrandsState with _$BrandsState {
  const factory BrandsState.initial() = _Initial;
  const factory BrandsState.loading() = _Loading;
  const factory BrandsState.loaded({required List<BrandsResponseModel> brands}) =
      _Loaded;
  const factory BrandsState.error({required String message}) = _Error;
}

