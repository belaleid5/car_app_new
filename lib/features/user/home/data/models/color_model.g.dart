// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColorModel _$ColorModelFromJson(Map<String, dynamic> json) => _ColorModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  hexValue: json['hex_value'] as String,
);

Map<String, dynamic> _$ColorModelToJson(_ColorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hex_value': instance.hexValue,
    };
