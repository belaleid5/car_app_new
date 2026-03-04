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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Search value)?  search,TResult Function( _LoadMore value)?  loadMore,TResult Function( _Reset value)?  reset,TResult Function( _SetCarType value)?  setCarType,TResult Function( _SetTypePayment value)?  setTypePayment,TResult Function( _SetColorId value)?  setColorId,TResult Function( _SetSeatingCapacity value)?  setSeatingCapacity,TResult Function( _SetFuelType value)?  setFuelType,TResult Function( _SetPrice value)?  setPrice,TResult Function( _ResetDraft value)?  resetDraft,TResult Function( _ApplyDraft value)?  applyDraft,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _Reset() when reset != null:
return reset(_that);case _SetCarType() when setCarType != null:
return setCarType(_that);case _SetTypePayment() when setTypePayment != null:
return setTypePayment(_that);case _SetColorId() when setColorId != null:
return setColorId(_that);case _SetSeatingCapacity() when setSeatingCapacity != null:
return setSeatingCapacity(_that);case _SetFuelType() when setFuelType != null:
return setFuelType(_that);case _SetPrice() when setPrice != null:
return setPrice(_that);case _ResetDraft() when resetDraft != null:
return resetDraft(_that);case _ApplyDraft() when applyDraft != null:
return applyDraft(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Search value)  search,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _Reset value)  reset,required TResult Function( _SetCarType value)  setCarType,required TResult Function( _SetTypePayment value)  setTypePayment,required TResult Function( _SetColorId value)  setColorId,required TResult Function( _SetSeatingCapacity value)  setSeatingCapacity,required TResult Function( _SetFuelType value)  setFuelType,required TResult Function( _SetPrice value)  setPrice,required TResult Function( _ResetDraft value)  resetDraft,required TResult Function( _ApplyDraft value)  applyDraft,}){
final _that = this;
switch (_that) {
case _Search():
return search(_that);case _LoadMore():
return loadMore(_that);case _Reset():
return reset(_that);case _SetCarType():
return setCarType(_that);case _SetTypePayment():
return setTypePayment(_that);case _SetColorId():
return setColorId(_that);case _SetSeatingCapacity():
return setSeatingCapacity(_that);case _SetFuelType():
return setFuelType(_that);case _SetPrice():
return setPrice(_that);case _ResetDraft():
return resetDraft(_that);case _ApplyDraft():
return applyDraft(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Search value)?  search,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _Reset value)?  reset,TResult? Function( _SetCarType value)?  setCarType,TResult? Function( _SetTypePayment value)?  setTypePayment,TResult? Function( _SetColorId value)?  setColorId,TResult? Function( _SetSeatingCapacity value)?  setSeatingCapacity,TResult? Function( _SetFuelType value)?  setFuelType,TResult? Function( _SetPrice value)?  setPrice,TResult? Function( _ResetDraft value)?  resetDraft,TResult? Function( _ApplyDraft value)?  applyDraft,}){
final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _Reset() when reset != null:
return reset(_that);case _SetCarType() when setCarType != null:
return setCarType(_that);case _SetTypePayment() when setTypePayment != null:
return setTypePayment(_that);case _SetColorId() when setColorId != null:
return setColorId(_that);case _SetSeatingCapacity() when setSeatingCapacity != null:
return setSeatingCapacity(_that);case _SetFuelType() when setFuelType != null:
return setFuelType(_that);case _SetPrice() when setPrice != null:
return setPrice(_that);case _ResetDraft() when resetDraft != null:
return resetDraft(_that);case _ApplyDraft() when applyDraft != null:
return applyDraft(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? query,  int? brandId,  String? carType,  String? typePayment,  int? colorId,  int? locationId,  int? seatingCapacity,  String? fuelType)?  search,TResult Function()?  loadMore,TResult Function()?  reset,TResult Function( String? value)?  setCarType,TResult Function( String? value)?  setTypePayment,TResult Function( int? value)?  setColorId,TResult Function( int? value)?  setSeatingCapacity,TResult Function( String? value)?  setFuelType,TResult Function( double min,  double max)?  setPrice,TResult Function()?  resetDraft,TResult Function()?  applyDraft,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that.query,_that.brandId,_that.carType,_that.typePayment,_that.colorId,_that.locationId,_that.seatingCapacity,_that.fuelType);case _LoadMore() when loadMore != null:
return loadMore();case _Reset() when reset != null:
return reset();case _SetCarType() when setCarType != null:
return setCarType(_that.value);case _SetTypePayment() when setTypePayment != null:
return setTypePayment(_that.value);case _SetColorId() when setColorId != null:
return setColorId(_that.value);case _SetSeatingCapacity() when setSeatingCapacity != null:
return setSeatingCapacity(_that.value);case _SetFuelType() when setFuelType != null:
return setFuelType(_that.value);case _SetPrice() when setPrice != null:
return setPrice(_that.min,_that.max);case _ResetDraft() when resetDraft != null:
return resetDraft();case _ApplyDraft() when applyDraft != null:
return applyDraft();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? query,  int? brandId,  String? carType,  String? typePayment,  int? colorId,  int? locationId,  int? seatingCapacity,  String? fuelType)  search,required TResult Function()  loadMore,required TResult Function()  reset,required TResult Function( String? value)  setCarType,required TResult Function( String? value)  setTypePayment,required TResult Function( int? value)  setColorId,required TResult Function( int? value)  setSeatingCapacity,required TResult Function( String? value)  setFuelType,required TResult Function( double min,  double max)  setPrice,required TResult Function()  resetDraft,required TResult Function()  applyDraft,}) {final _that = this;
switch (_that) {
case _Search():
return search(_that.query,_that.brandId,_that.carType,_that.typePayment,_that.colorId,_that.locationId,_that.seatingCapacity,_that.fuelType);case _LoadMore():
return loadMore();case _Reset():
return reset();case _SetCarType():
return setCarType(_that.value);case _SetTypePayment():
return setTypePayment(_that.value);case _SetColorId():
return setColorId(_that.value);case _SetSeatingCapacity():
return setSeatingCapacity(_that.value);case _SetFuelType():
return setFuelType(_that.value);case _SetPrice():
return setPrice(_that.min,_that.max);case _ResetDraft():
return resetDraft();case _ApplyDraft():
return applyDraft();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? query,  int? brandId,  String? carType,  String? typePayment,  int? colorId,  int? locationId,  int? seatingCapacity,  String? fuelType)?  search,TResult? Function()?  loadMore,TResult? Function()?  reset,TResult? Function( String? value)?  setCarType,TResult? Function( String? value)?  setTypePayment,TResult? Function( int? value)?  setColorId,TResult? Function( int? value)?  setSeatingCapacity,TResult? Function( String? value)?  setFuelType,TResult? Function( double min,  double max)?  setPrice,TResult? Function()?  resetDraft,TResult? Function()?  applyDraft,}) {final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that.query,_that.brandId,_that.carType,_that.typePayment,_that.colorId,_that.locationId,_that.seatingCapacity,_that.fuelType);case _LoadMore() when loadMore != null:
return loadMore();case _Reset() when reset != null:
return reset();case _SetCarType() when setCarType != null:
return setCarType(_that.value);case _SetTypePayment() when setTypePayment != null:
return setTypePayment(_that.value);case _SetColorId() when setColorId != null:
return setColorId(_that.value);case _SetSeatingCapacity() when setSeatingCapacity != null:
return setSeatingCapacity(_that.value);case _SetFuelType() when setFuelType != null:
return setFuelType(_that.value);case _SetPrice() when setPrice != null:
return setPrice(_that.min,_that.max);case _ResetDraft() when resetDraft != null:
return resetDraft();case _ApplyDraft() when applyDraft != null:
return applyDraft();case _:
  return null;

}
}

}

/// @nodoc


class _Search implements FilterSearchEvent {
  const _Search({this.query, this.brandId, this.carType, this.typePayment, this.colorId, this.locationId, this.seatingCapacity, this.fuelType});
  

 final  String? query;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.query, query) || other.query == query)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.carType, carType) || other.carType == carType)&&(identical(other.typePayment, typePayment) || other.typePayment == typePayment)&&(identical(other.colorId, colorId) || other.colorId == colorId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.seatingCapacity, seatingCapacity) || other.seatingCapacity == seatingCapacity)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType));
}


@override
int get hashCode => Object.hash(runtimeType,query,brandId,carType,typePayment,colorId,locationId,seatingCapacity,fuelType);

@override
String toString() {
  return 'FilterSearchEvent.search(query: $query, brandId: $brandId, carType: $carType, typePayment: $typePayment, colorId: $colorId, locationId: $locationId, seatingCapacity: $seatingCapacity, fuelType: $fuelType)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $FilterSearchEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 String? query, int? brandId, String? carType, String? typePayment, int? colorId, int? locationId, int? seatingCapacity, String? fuelType
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
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? brandId = freezed,Object? carType = freezed,Object? typePayment = freezed,Object? colorId = freezed,Object? locationId = freezed,Object? seatingCapacity = freezed,Object? fuelType = freezed,}) {
  return _then(_Search(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
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




/// @nodoc


class _SetCarType implements FilterSearchEvent {
  const _SetCarType(this.value);
  

 final  String? value;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetCarTypeCopyWith<_SetCarType> get copyWith => __$SetCarTypeCopyWithImpl<_SetCarType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetCarType&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'FilterSearchEvent.setCarType(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SetCarTypeCopyWith<$Res> implements $FilterSearchEventCopyWith<$Res> {
  factory _$SetCarTypeCopyWith(_SetCarType value, $Res Function(_SetCarType) _then) = __$SetCarTypeCopyWithImpl;
@useResult
$Res call({
 String? value
});




}
/// @nodoc
class __$SetCarTypeCopyWithImpl<$Res>
    implements _$SetCarTypeCopyWith<$Res> {
  __$SetCarTypeCopyWithImpl(this._self, this._then);

  final _SetCarType _self;
  final $Res Function(_SetCarType) _then;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_SetCarType(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _SetTypePayment implements FilterSearchEvent {
  const _SetTypePayment(this.value);
  

 final  String? value;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetTypePaymentCopyWith<_SetTypePayment> get copyWith => __$SetTypePaymentCopyWithImpl<_SetTypePayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetTypePayment&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'FilterSearchEvent.setTypePayment(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SetTypePaymentCopyWith<$Res> implements $FilterSearchEventCopyWith<$Res> {
  factory _$SetTypePaymentCopyWith(_SetTypePayment value, $Res Function(_SetTypePayment) _then) = __$SetTypePaymentCopyWithImpl;
@useResult
$Res call({
 String? value
});




}
/// @nodoc
class __$SetTypePaymentCopyWithImpl<$Res>
    implements _$SetTypePaymentCopyWith<$Res> {
  __$SetTypePaymentCopyWithImpl(this._self, this._then);

  final _SetTypePayment _self;
  final $Res Function(_SetTypePayment) _then;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_SetTypePayment(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _SetColorId implements FilterSearchEvent {
  const _SetColorId(this.value);
  

 final  int? value;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetColorIdCopyWith<_SetColorId> get copyWith => __$SetColorIdCopyWithImpl<_SetColorId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetColorId&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'FilterSearchEvent.setColorId(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SetColorIdCopyWith<$Res> implements $FilterSearchEventCopyWith<$Res> {
  factory _$SetColorIdCopyWith(_SetColorId value, $Res Function(_SetColorId) _then) = __$SetColorIdCopyWithImpl;
@useResult
$Res call({
 int? value
});




}
/// @nodoc
class __$SetColorIdCopyWithImpl<$Res>
    implements _$SetColorIdCopyWith<$Res> {
  __$SetColorIdCopyWithImpl(this._self, this._then);

  final _SetColorId _self;
  final $Res Function(_SetColorId) _then;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_SetColorId(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _SetSeatingCapacity implements FilterSearchEvent {
  const _SetSeatingCapacity(this.value);
  

 final  int? value;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetSeatingCapacityCopyWith<_SetSeatingCapacity> get copyWith => __$SetSeatingCapacityCopyWithImpl<_SetSeatingCapacity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetSeatingCapacity&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'FilterSearchEvent.setSeatingCapacity(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SetSeatingCapacityCopyWith<$Res> implements $FilterSearchEventCopyWith<$Res> {
  factory _$SetSeatingCapacityCopyWith(_SetSeatingCapacity value, $Res Function(_SetSeatingCapacity) _then) = __$SetSeatingCapacityCopyWithImpl;
@useResult
$Res call({
 int? value
});




}
/// @nodoc
class __$SetSeatingCapacityCopyWithImpl<$Res>
    implements _$SetSeatingCapacityCopyWith<$Res> {
  __$SetSeatingCapacityCopyWithImpl(this._self, this._then);

  final _SetSeatingCapacity _self;
  final $Res Function(_SetSeatingCapacity) _then;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_SetSeatingCapacity(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _SetFuelType implements FilterSearchEvent {
  const _SetFuelType(this.value);
  

 final  String? value;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetFuelTypeCopyWith<_SetFuelType> get copyWith => __$SetFuelTypeCopyWithImpl<_SetFuelType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetFuelType&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'FilterSearchEvent.setFuelType(value: $value)';
}


}

/// @nodoc
abstract mixin class _$SetFuelTypeCopyWith<$Res> implements $FilterSearchEventCopyWith<$Res> {
  factory _$SetFuelTypeCopyWith(_SetFuelType value, $Res Function(_SetFuelType) _then) = __$SetFuelTypeCopyWithImpl;
@useResult
$Res call({
 String? value
});




}
/// @nodoc
class __$SetFuelTypeCopyWithImpl<$Res>
    implements _$SetFuelTypeCopyWith<$Res> {
  __$SetFuelTypeCopyWithImpl(this._self, this._then);

  final _SetFuelType _self;
  final $Res Function(_SetFuelType) _then;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_SetFuelType(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _SetPrice implements FilterSearchEvent {
  const _SetPrice(this.min, this.max);
  

 final  double min;
 final  double max;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetPriceCopyWith<_SetPrice> get copyWith => __$SetPriceCopyWithImpl<_SetPrice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetPrice&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,min,max);

@override
String toString() {
  return 'FilterSearchEvent.setPrice(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$SetPriceCopyWith<$Res> implements $FilterSearchEventCopyWith<$Res> {
  factory _$SetPriceCopyWith(_SetPrice value, $Res Function(_SetPrice) _then) = __$SetPriceCopyWithImpl;
@useResult
$Res call({
 double min, double max
});




}
/// @nodoc
class __$SetPriceCopyWithImpl<$Res>
    implements _$SetPriceCopyWith<$Res> {
  __$SetPriceCopyWithImpl(this._self, this._then);

  final _SetPrice _self;
  final $Res Function(_SetPrice) _then;

/// Create a copy of FilterSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? min = null,Object? max = null,}) {
  return _then(_SetPrice(
null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _ResetDraft implements FilterSearchEvent {
  const _ResetDraft();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetDraft);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterSearchEvent.resetDraft()';
}


}




/// @nodoc


class _ApplyDraft implements FilterSearchEvent {
  const _ApplyDraft();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplyDraft);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterSearchEvent.applyDraft()';
}


}




// dart format on
