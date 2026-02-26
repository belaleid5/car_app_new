// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CarDetailsEvent {

 String get carId;
/// Create a copy of CarDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarDetailsEventCopyWith<CarDetailsEvent> get copyWith => _$CarDetailsEventCopyWithImpl<CarDetailsEvent>(this as CarDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarDetailsEvent&&(identical(other.carId, carId) || other.carId == carId));
}


@override
int get hashCode => Object.hash(runtimeType,carId);

@override
String toString() {
  return 'CarDetailsEvent(carId: $carId)';
}


}

/// @nodoc
abstract mixin class $CarDetailsEventCopyWith<$Res>  {
  factory $CarDetailsEventCopyWith(CarDetailsEvent value, $Res Function(CarDetailsEvent) _then) = _$CarDetailsEventCopyWithImpl;
@useResult
$Res call({
 String carId
});




}
/// @nodoc
class _$CarDetailsEventCopyWithImpl<$Res>
    implements $CarDetailsEventCopyWith<$Res> {
  _$CarDetailsEventCopyWithImpl(this._self, this._then);

  final CarDetailsEvent _self;
  final $Res Function(CarDetailsEvent) _then;

/// Create a copy of CarDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? carId = null,}) {
  return _then(_self.copyWith(
carId: null == carId ? _self.carId : carId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CarDetailsEvent].
extension CarDetailsEventPatterns on CarDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetCarDetails value)?  getCarDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCarDetails() when getCarDetails != null:
return getCarDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetCarDetails value)  getCarDetails,}){
final _that = this;
switch (_that) {
case _GetCarDetails():
return getCarDetails(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetCarDetails value)?  getCarDetails,}){
final _that = this;
switch (_that) {
case _GetCarDetails() when getCarDetails != null:
return getCarDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String carId)?  getCarDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCarDetails() when getCarDetails != null:
return getCarDetails(_that.carId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String carId)  getCarDetails,}) {final _that = this;
switch (_that) {
case _GetCarDetails():
return getCarDetails(_that.carId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String carId)?  getCarDetails,}) {final _that = this;
switch (_that) {
case _GetCarDetails() when getCarDetails != null:
return getCarDetails(_that.carId);case _:
  return null;

}
}

}

/// @nodoc


class _GetCarDetails implements CarDetailsEvent {
  const _GetCarDetails({required this.carId});
  

@override final  String carId;

/// Create a copy of CarDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCarDetailsCopyWith<_GetCarDetails> get copyWith => __$GetCarDetailsCopyWithImpl<_GetCarDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCarDetails&&(identical(other.carId, carId) || other.carId == carId));
}


@override
int get hashCode => Object.hash(runtimeType,carId);

@override
String toString() {
  return 'CarDetailsEvent.getCarDetails(carId: $carId)';
}


}

/// @nodoc
abstract mixin class _$GetCarDetailsCopyWith<$Res> implements $CarDetailsEventCopyWith<$Res> {
  factory _$GetCarDetailsCopyWith(_GetCarDetails value, $Res Function(_GetCarDetails) _then) = __$GetCarDetailsCopyWithImpl;
@override @useResult
$Res call({
 String carId
});




}
/// @nodoc
class __$GetCarDetailsCopyWithImpl<$Res>
    implements _$GetCarDetailsCopyWith<$Res> {
  __$GetCarDetailsCopyWithImpl(this._self, this._then);

  final _GetCarDetails _self;
  final $Res Function(_GetCarDetails) _then;

/// Create a copy of CarDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? carId = null,}) {
  return _then(_GetCarDetails(
carId: null == carId ? _self.carId : carId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
