// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationResponseModel _$LocationResponseModelFromJson(
  Map<String, dynamic> json,
) => _LocationResponseModel(
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
  _LocationResponseModel instance,
) => <String, dynamic>{
  'data': instance.data,
  'links': instance.links,
  'meta': instance.meta,
};
