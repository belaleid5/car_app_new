// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchFilter {

 String? get nameCar; int? get brandId; String? get carType; String? get typePayment; int? get colorId; int? get locationId; int? get seatingCapacity; String? get fuelType;
/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFilterCopyWith<SearchFilter> get copyWith => _$SearchFilterCopyWithImpl<SearchFilter>(this as SearchFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFilter&&(identical(other.nameCar, nameCar) || other.nameCar == nameCar)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.carType, carType) || other.carType == carType)&&(identical(other.typePayment, typePayment) || other.typePayment == typePayment)&&(identical(other.colorId, colorId) || other.colorId == colorId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.seatingCapacity, seatingCapacity) || other.seatingCapacity == seatingCapacity)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType));
}


@override
int get hashCode => Object.hash(runtimeType,nameCar,brandId,carType,typePayment,colorId,locationId,seatingCapacity,fuelType);

@override
String toString() {
  return 'SearchFilter(nameCar: $nameCar, brandId: $brandId, carType: $carType, typePayment: $typePayment, colorId: $colorId, locationId: $locationId, seatingCapacity: $seatingCapacity, fuelType: $fuelType)';
}


}

/// @nodoc
abstract mixin class $SearchFilterCopyWith<$Res>  {
  factory $SearchFilterCopyWith(SearchFilter value, $Res Function(SearchFilter) _then) = _$SearchFilterCopyWithImpl;
@useResult
$Res call({
 String? nameCar, int? brandId, String? carType, String? typePayment, int? colorId, int? locationId, int? seatingCapacity, String? fuelType
});




}
/// @nodoc
class _$SearchFilterCopyWithImpl<$Res>
    implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._self, this._then);

  final SearchFilter _self;
  final $Res Function(SearchFilter) _then;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nameCar = freezed,Object? brandId = freezed,Object? carType = freezed,Object? typePayment = freezed,Object? colorId = freezed,Object? locationId = freezed,Object? seatingCapacity = freezed,Object? fuelType = freezed,}) {
  return _then(_self.copyWith(
nameCar: freezed == nameCar ? _self.nameCar : nameCar // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,carType: freezed == carType ? _self.carType : carType // ignore: cast_nullable_to_non_nullable
as String?,typePayment: freezed == typePayment ? _self.typePayment : typePayment // ignore: cast_nullable_to_non_nullable
as String?,colorId: freezed == colorId ? _self.colorId : colorId // ignore: cast_nullable_to_non_nullable
as int?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,seatingCapacity: freezed == seatingCapacity ? _self.seatingCapacity : seatingCapacity // ignore: cast_nullable_to_non_nullable
as int?,fuelType: freezed == fuelType ? _self.fuelType : fuelType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchFilter].
extension SearchFilterPatterns on SearchFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFilter value)  $default,){
final _that = this;
switch (_that) {
case _SearchFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFilter value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? nameCar,  int? brandId,  String? carType,  String? typePayment,  int? colorId,  int? locationId,  int? seatingCapacity,  String? fuelType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
return $default(_that.nameCar,_that.brandId,_that.carType,_that.typePayment,_that.colorId,_that.locationId,_that.seatingCapacity,_that.fuelType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? nameCar,  int? brandId,  String? carType,  String? typePayment,  int? colorId,  int? locationId,  int? seatingCapacity,  String? fuelType)  $default,) {final _that = this;
switch (_that) {
case _SearchFilter():
return $default(_that.nameCar,_that.brandId,_that.carType,_that.typePayment,_that.colorId,_that.locationId,_that.seatingCapacity,_that.fuelType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? nameCar,  int? brandId,  String? carType,  String? typePayment,  int? colorId,  int? locationId,  int? seatingCapacity,  String? fuelType)?  $default,) {final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
return $default(_that.nameCar,_that.brandId,_that.carType,_that.typePayment,_that.colorId,_that.locationId,_that.seatingCapacity,_that.fuelType);case _:
  return null;

}
}

}

/// @nodoc


class _SearchFilter implements SearchFilter {
  const _SearchFilter({this.nameCar, this.brandId, this.carType, this.typePayment, this.colorId, this.locationId, this.seatingCapacity, this.fuelType});
  

@override final  String? nameCar;
@override final  int? brandId;
@override final  String? carType;
@override final  String? typePayment;
@override final  int? colorId;
@override final  int? locationId;
@override final  int? seatingCapacity;
@override final  String? fuelType;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFilterCopyWith<_SearchFilter> get copyWith => __$SearchFilterCopyWithImpl<_SearchFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFilter&&(identical(other.nameCar, nameCar) || other.nameCar == nameCar)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.carType, carType) || other.carType == carType)&&(identical(other.typePayment, typePayment) || other.typePayment == typePayment)&&(identical(other.colorId, colorId) || other.colorId == colorId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.seatingCapacity, seatingCapacity) || other.seatingCapacity == seatingCapacity)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType));
}


@override
int get hashCode => Object.hash(runtimeType,nameCar,brandId,carType,typePayment,colorId,locationId,seatingCapacity,fuelType);

@override
String toString() {
  return 'SearchFilter(nameCar: $nameCar, brandId: $brandId, carType: $carType, typePayment: $typePayment, colorId: $colorId, locationId: $locationId, seatingCapacity: $seatingCapacity, fuelType: $fuelType)';
}


}

/// @nodoc
abstract mixin class _$SearchFilterCopyWith<$Res> implements $SearchFilterCopyWith<$Res> {
  factory _$SearchFilterCopyWith(_SearchFilter value, $Res Function(_SearchFilter) _then) = __$SearchFilterCopyWithImpl;
@override @useResult
$Res call({
 String? nameCar, int? brandId, String? carType, String? typePayment, int? colorId, int? locationId, int? seatingCapacity, String? fuelType
});




}
/// @nodoc
class __$SearchFilterCopyWithImpl<$Res>
    implements _$SearchFilterCopyWith<$Res> {
  __$SearchFilterCopyWithImpl(this._self, this._then);

  final _SearchFilter _self;
  final $Res Function(_SearchFilter) _then;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nameCar = freezed,Object? brandId = freezed,Object? carType = freezed,Object? typePayment = freezed,Object? colorId = freezed,Object? locationId = freezed,Object? seatingCapacity = freezed,Object? fuelType = freezed,}) {
  return _then(_SearchFilter(
nameCar: freezed == nameCar ? _self.nameCar : nameCar // ignore: cast_nullable_to_non_nullable
as String?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,carType: freezed == carType ? _self.carType : carType // ignore: cast_nullable_to_non_nullable
as String?,typePayment: freezed == typePayment ? _self.typePayment : typePayment // ignore: cast_nullable_to_non_nullable
as String?,colorId: freezed == colorId ? _self.colorId : colorId // ignore: cast_nullable_to_non_nullable
as int?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,seatingCapacity: freezed == seatingCapacity ? _self.seatingCapacity : seatingCapacity // ignore: cast_nullable_to_non_nullable
as int?,fuelType: freezed == fuelType ? _self.fuelType : fuelType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
