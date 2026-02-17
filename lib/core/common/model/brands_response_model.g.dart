// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrandsResponseModel _$BrandsResponseModelFromJson(Map<String, dynamic> json) =>
    _BrandsResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: BrandsMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BrandsResponseModelToJson(
  _BrandsResponseModel instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};

_BrandsMeta _$BrandsMetaFromJson(Map<String, dynamic> json) => _BrandsMeta(
  currentPage: (json['current_page'] as num).toInt(),
  lastPage: (json['last_page'] as num).toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$BrandsMetaToJson(_BrandsMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
    };
