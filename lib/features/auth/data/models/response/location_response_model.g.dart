// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationResponseModel _$LocationResponseModelFromJson(
  Map<String, dynamic> json,
) => LocationResponseModel(
  data: (json['data'] as List<dynamic>)
      .map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  links: json['links'] == null
      ? null
      : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
  meta: json['meta'] == null
      ? null
      : PaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocationResponseModelToJson(
  LocationResponseModel instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'links': instance.links?.toJson(),
  'meta': instance.meta?.toJson(),
};
