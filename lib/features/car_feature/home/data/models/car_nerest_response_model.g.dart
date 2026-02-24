// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_nerest_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarsNerestResponseModel _$CarsNerestResponseModelFromJson(
  Map<String, dynamic> json,
) => _CarsNerestResponseModel(
  data: (json['data'] as List<dynamic>)
      .map((e) => CarNerstModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  links: PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
  meta: PaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CarsNerestResponseModelToJson(
  _CarsNerestResponseModel instance,
) => <String, dynamic>{
  'data': instance.data,
  'links': instance.links,
  'meta': instance.meta,
};
