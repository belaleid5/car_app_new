// owner_model.dart
import 'package:car_app_new/core/common/model/country_model.dart';
import 'package:car_app_new/core/common/model/model/location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';
part 'owner_model.g.dart';

@freezed
sealed class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    required int id,
    @JsonKey(name: 'full_name') @Default('') String fullName,
    @Default('') String email,
    @Default('') String phone,
    @JsonKey(name: 'phone_is_verified') @Default(false) bool phoneIsVerified,
    @Default(0.0) double balance,
    @JsonKey(name: 'national_id') int? nationalId,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    CountryModel? country,
    LocationModel? location,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);
}