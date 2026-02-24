// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_nerest_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarsNerestResponseModel {

 List<CarNerstModel> get data; PaginationLinks get links; PaginationMeta get meta;
/// Create a copy of CarsNerestResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarsNerestResponseModelCopyWith<CarsNerestResponseModel> get copyWith => _$CarsNerestResponseModelCopyWithImpl<CarsNerestResponseModel>(this as CarsNerestResponseModel, _$identity);

  /// Serializes this CarsNerestResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarsNerestResponseModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.links, links) || other.links == links)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),links,meta);

@override
String toString() {
  return 'CarsNerestResponseModel(data: $data, links: $links, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $CarsNerestResponseModelCopyWith<$Res>  {
  factory $CarsNerestResponseModelCopyWith(CarsNerestResponseModel value, $Res Function(CarsNerestResponseModel) _then) = _$CarsNerestResponseModelCopyWithImpl;
@useResult
$Res call({
 List<CarNerstModel> data, PaginationLinks links, PaginationMeta meta
});




}
/// @nodoc
class _$CarsNerestResponseModelCopyWithImpl<$Res>
    implements $CarsNerestResponseModelCopyWith<$Res> {
  _$CarsNerestResponseModelCopyWithImpl(this._self, this._then);

  final CarsNerestResponseModel _self;
  final $Res Function(CarsNerestResponseModel) _then;

/// Create a copy of CarsNerestResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? links = null,Object? meta = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CarNerstModel>,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,
  ));
}

}


/// Adds pattern-matching-related methods to [CarsNerestResponseModel].
extension CarsNerestResponseModelPatterns on CarsNerestResponseModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarsNerestResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarsNerestResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarsNerestResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CarsNerestResponseModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarsNerestResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CarsNerestResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CarNerstModel> data,  PaginationLinks links,  PaginationMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CarsNerestResponseModel() when $default != null:
return $default(_that.data,_that.links,_that.meta);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CarNerstModel> data,  PaginationLinks links,  PaginationMeta meta)  $default,) {final _that = this;
switch (_that) {
case _CarsNerestResponseModel():
return $default(_that.data,_that.links,_that.meta);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CarNerstModel> data,  PaginationLinks links,  PaginationMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _CarsNerestResponseModel() when $default != null:
return $default(_that.data,_that.links,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CarsNerestResponseModel implements CarsNerestResponseModel {
  const _CarsNerestResponseModel({required final  List<CarNerstModel> data, required this.links, required this.meta}): _data = data;
  factory _CarsNerestResponseModel.fromJson(Map<String, dynamic> json) => _$CarsNerestResponseModelFromJson(json);

 final  List<CarNerstModel> _data;
@override List<CarNerstModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  PaginationLinks links;
@override final  PaginationMeta meta;

/// Create a copy of CarsNerestResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarsNerestResponseModelCopyWith<_CarsNerestResponseModel> get copyWith => __$CarsNerestResponseModelCopyWithImpl<_CarsNerestResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarsNerestResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarsNerestResponseModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.links, links) || other.links == links)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),links,meta);

@override
String toString() {
  return 'CarsNerestResponseModel(data: $data, links: $links, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$CarsNerestResponseModelCopyWith<$Res> implements $CarsNerestResponseModelCopyWith<$Res> {
  factory _$CarsNerestResponseModelCopyWith(_CarsNerestResponseModel value, $Res Function(_CarsNerestResponseModel) _then) = __$CarsNerestResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<CarNerstModel> data, PaginationLinks links, PaginationMeta meta
});




}
/// @nodoc
class __$CarsNerestResponseModelCopyWithImpl<$Res>
    implements _$CarsNerestResponseModelCopyWith<$Res> {
  __$CarsNerestResponseModelCopyWithImpl(this._self, this._then);

  final _CarsNerestResponseModel _self;
  final $Res Function(_CarsNerestResponseModel) _then;

/// Create a copy of CarsNerestResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? links = null,Object? meta = null,}) {
  return _then(_CarsNerestResponseModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CarNerstModel>,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,
  ));
}


}

// dart format on
