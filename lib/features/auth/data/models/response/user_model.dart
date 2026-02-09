import 'package:car_app_new/features/auth/data/models/response/country_model.dart';
import 'package:car_app_new/features/auth/data/models/response/location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    required int id,

    @JsonKey(name: 'full_name')
    required String fullName,

    required String email,
    required String phone,

    @JsonKey(name: 'phone_is_verified')
    required bool phoneIsVerified,

    required CountryModel country,
    required LocationModel location,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
