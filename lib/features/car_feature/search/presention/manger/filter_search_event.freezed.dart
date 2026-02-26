// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterSearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterSearchEvent()';
}


}

/// @nodoc
class $FilterSearchEventCopyWith<$Res>  {
$FilterSearchEventCopyWith(FilterSearchEvent _, $Res Function(FilterSearchEvent) __);
}


/// Adds pattern-matching-related methods to [FilterSearchEvent].
extension FilterSearchEventPatterns on FilterSearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Search value)?  search,TResult Function( _LoadMore value)?  loadMore,TResult Function( _Reset value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Search value)  search,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _Reset value)  reset,}){
final _that = this;
switch (_that) {
case _Search():
return search(_that);case _LoadMore():
return loadMore(_that);case _Reset():
return reset(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Search value)?  search,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _Reset value)?  reset,}){
final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? nameCar,  int? brandId,  String? carType,  String? typePayment,  int? colorId,  int? locationId,  int? seatingCapacity,  String? fuelType)?  search,TResult Function()?  loadMore,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that.nameCar,_that.brandId,_that.carType,_that.typePayment,_that.colorId,_that.locationId,_that.seatingCapacity,_that.fuelType);case _LoadMore() when loadMore != null:
return loadMore();case _Reset() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? nameCar,  int? brandId,  String? carType,  String? typePayment,  int? colorId,  int? locationId,  int? seatingCapacity,  String? fuelType)  search,required TResult Function()  loadMore,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case _Search():
return search(_that.nameCar,_that.brandId,_that.carType,_that.typePayment,_that.colorId,_that.locationId,_that.seatingCapacity,_that.fuelType);case _LoadMore():
return loadMore();case _Reset():
return reset();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? nameCar,  int? brandId,  String? carType,  String? typePayment,  int? colorId,  int? locationId,  int? seatingCapacity,  String? fuelType)?  search,TResult? Function()?  loadMore,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that.nameCar,_that.brandId,_that.carType,_that.typePayment,_that.colorId,_that.locationId,_that.seatingCapacity,_that.fuelType);case _LoadMore() when loadMore != null:
return loadMore();case _Reset() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class _Search implements FilterSearchEvent {
  const _Search({this.nameCar, this.brandId, this.carType, this.typePayment, this.colorId, this.locationId, this.seatingCapacity, this.fuelType});
  

 final  String? nameCar;
 final  int? brandId;
 final  String? carType;
 final  String? typePayment;
 final  int? colorId;
 final  int? locationId;
 final  int? seatingCapacity;
 final  String? fuelType;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.nameCar, nameCar) || other.nameCar == nameCar)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.carType, carType) || other.carType == carType)&&(identical(other.typePayment, typePayment) || other.typePayment == typePayment)&&(identical(other.colorId, colorId) || other.colorId == colorId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.seatingCapacity, seatingCapacity) || other.seatingCapacity == seatingCapacity)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType));
}


@override
int get hashCode => Object.hash(runtimeType,nameCar,brandId,carType,typePayment,colorId,locationId,seatingCapacity,fuelType);

@override
String toString() {
  return 'FilterSearchEvent.search(nameCar: $nameCar, brandId: $brandId, carType: $carType, typePayment: $typePayment, colorId: $colorId, locationId: $locationId, seatingCapacity: $seatingCapacity, fuelType: $fuelType)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $FilterSearchEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 String? nameCar, int? brandId, String? carType, String? typePayment, int? colorId, int? locationId, int? seatingCapacity, String? fuelType
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nameCar = freezed,Object? brandId = freezed,Object? carType = freezed,Object? typePayment = freezed,Object? colorId = freezed,Object? locationId = freezed,Object? seatingCapacity = freezed,Object? fuelType = freezed,}) {
  return _then(_Search(
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

/// @nodoc


class _LoadMore implements FilterSearchEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterSearchEvent.loadMore()';
}


}




/// @nodoc


class _Reset implements FilterSearchEvent {
  const _Reset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterSearchEvent.reset()';
}


}




// dart format on
