import 'package:car_app_new/core/shared/model/location_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/response/country_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';


@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    @JsonKey(name: 'full_name') required String fullName,
    required String email,
    required String phone,
    @JsonKey(name: 'phone_is_verified') required bool phoneIsVerified,
    required double balance,
    @JsonKey(name: 'national_id') int? nationalId,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    CountryModel? country,
    LocationModel? location,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
