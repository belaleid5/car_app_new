
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.g.dart';
@JsonSerializable()
class CountryModel {

  CountryModel({
    required this.id,
    required this.country,
    required this.abbreviation,
  });
  final int id;
  final String country;
  final String abbreviation;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}
