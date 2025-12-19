
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.g.dart';
@JsonSerializable()
class CountryResponseModel {
  const CountryResponseModel({
    required this.id,
    required this.country,
    required this.abbreviation,
  });

  factory CountryResponseModel.fromJson(Map<String, dynamic> json)=>_$CountryResponseModelFromJson(json);
  final int id;
  final String country;
  final String abbreviation;
}
