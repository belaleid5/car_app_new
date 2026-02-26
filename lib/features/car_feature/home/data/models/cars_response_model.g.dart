// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarsResponseModel _$CarsResponseModelFromJson(Map<String, dynamic> json) =>
    _CarsResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => CarsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: CarsMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CarsResponseModelToJson(_CarsResponseModel instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};

_CarsMeta _$CarsMetaFromJson(Map<String, dynamic> json) => _CarsMeta(
  currentPage: (json['current_page'] as num).toInt(),
  lastPage: (json['last_page'] as num).toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$CarsMetaToJson(_CarsMeta instance) => <String, dynamic>{
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
  'per_page': instance.perPage,
  'total': instance.total,
};
