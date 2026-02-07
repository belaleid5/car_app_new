// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent()';
}


}

/// @nodoc
class $RegisterEventCopyWith<$Res>  {
$RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}


/// Adds pattern-matching-related methods to [RegisterEvent].
extension RegisterEventPatterns on RegisterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetLocations value)?  getLocations,TResult Function( _SelectLocation value)?  selectLocation,TResult Function( _Register value)?  register,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetLocations() when getLocations != null:
return getLocations(_that);case _SelectLocation() when selectLocation != null:
return selectLocation(_that);case _Register() when register != null:
return register(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetLocations value)  getLocations,required TResult Function( _SelectLocation value)  selectLocation,required TResult Function( _Register value)  register,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetLocations():
return getLocations(_that);case _SelectLocation():
return selectLocation(_that);case _Register():
return register(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetLocations value)?  getLocations,TResult? Function( _SelectLocation value)?  selectLocation,TResult? Function( _Register value)?  register,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetLocations() when getLocations != null:
return getLocations(_that);case _SelectLocation() when selectLocation != null:
return selectLocation(_that);case _Register() when register != null:
return register(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getLocations,TResult Function( int locationId)?  selectLocation,TResult Function()?  register,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetLocations() when getLocations != null:
return getLocations();case _SelectLocation() when selectLocation != null:
return selectLocation(_that.locationId);case _Register() when register != null:
return register();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getLocations,required TResult Function( int locationId)  selectLocation,required TResult Function()  register,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetLocations():
return getLocations();case _SelectLocation():
return selectLocation(_that.locationId);case _Register():
return register();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getLocations,TResult? Function( int locationId)?  selectLocation,TResult? Function()?  register,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetLocations() when getLocations != null:
return getLocations();case _SelectLocation() when selectLocation != null:
return selectLocation(_that.locationId);case _Register() when register != null:
return register();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RegisterEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.started()';
}


}




/// @nodoc


class _GetLocations implements RegisterEvent {
  const _GetLocations();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetLocations);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.getLocations()';
}


}




/// @nodoc


class _SelectLocation implements RegisterEvent {
  const _SelectLocation(this.locationId);
  

 final  int locationId;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectLocationCopyWith<_SelectLocation> get copyWith => __$SelectLocationCopyWithImpl<_SelectLocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectLocation&&(identical(other.locationId, locationId) || other.locationId == locationId));
}


@override
int get hashCode => Object.hash(runtimeType,locationId);

@override
String toString() {
  return 'RegisterEvent.selectLocation(locationId: $locationId)';
}


}

/// @nodoc
abstract mixin class _$SelectLocationCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$SelectLocationCopyWith(_SelectLocation value, $Res Function(_SelectLocation) _then) = __$SelectLocationCopyWithImpl;
@useResult
$Res call({
 int locationId
});




}
/// @nodoc
class __$SelectLocationCopyWithImpl<$Res>
    implements _$SelectLocationCopyWith<$Res> {
  __$SelectLocationCopyWithImpl(this._self, this._then);

  final _SelectLocation _self;
  final $Res Function(_SelectLocation) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locationId = null,}) {
  return _then(_SelectLocation(
null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Register implements RegisterEvent {
  const _Register();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Register);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.register()';
}


}




/// @nodoc
mixin _$RegisterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState()';
}


}

/// @nodoc
class $RegisterStateCopyWith<$Res>  {
$RegisterStateCopyWith(RegisterState _, $Res Function(RegisterState) __);
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _LocationsLoading value)?  locationsLoading,TResult Function( _LocationsLoaded value)?  locationsLoaded,TResult Function( _LocationSelected value)?  locationSelected,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _LocationsLoading() when locationsLoading != null:
return locationsLoading(_that);case _LocationsLoaded() when locationsLoaded != null:
return locationsLoaded(_that);case _LocationSelected() when locationSelected != null:
return locationSelected(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _LocationsLoading value)  locationsLoading,required TResult Function( _LocationsLoaded value)  locationsLoaded,required TResult Function( _LocationSelected value)  locationSelected,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _LocationsLoading():
return locationsLoading(_that);case _LocationsLoaded():
return locationsLoaded(_that);case _LocationSelected():
return locationSelected(_that);case _Success():
return success(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _LocationsLoading value)?  locationsLoading,TResult? Function( _LocationsLoaded value)?  locationsLoaded,TResult? Function( _LocationSelected value)?  locationSelected,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _LocationsLoading() when locationsLoading != null:
return locationsLoading(_that);case _LocationsLoaded() when locationsLoaded != null:
return locationsLoaded(_that);case _LocationSelected() when locationSelected != null:
return locationSelected(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  locationsLoading,TResult Function( List<LocationModel> locations)?  locationsLoaded,TResult Function( int locationId,  List<LocationModel> locations)?  locationSelected,TResult Function( UserResponseModel response)?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _LocationsLoading() when locationsLoading != null:
return locationsLoading();case _LocationsLoaded() when locationsLoaded != null:
return locationsLoaded(_that.locations);case _LocationSelected() when locationSelected != null:
return locationSelected(_that.locationId,_that.locations);case _Success() when success != null:
return success(_that.response);case _Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  locationsLoading,required TResult Function( List<LocationModel> locations)  locationsLoaded,required TResult Function( int locationId,  List<LocationModel> locations)  locationSelected,required TResult Function( UserResponseModel response)  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _LocationsLoading():
return locationsLoading();case _LocationsLoaded():
return locationsLoaded(_that.locations);case _LocationSelected():
return locationSelected(_that.locationId,_that.locations);case _Success():
return success(_that.response);case _Error():
return error(_that.error);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  locationsLoading,TResult? Function( List<LocationModel> locations)?  locationsLoaded,TResult? Function( int locationId,  List<LocationModel> locations)?  locationSelected,TResult? Function( UserResponseModel response)?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _LocationsLoading() when locationsLoading != null:
return locationsLoading();case _LocationsLoaded() when locationsLoaded != null:
return locationsLoaded(_that.locations);case _LocationSelected() when locationSelected != null:
return locationSelected(_that.locationId,_that.locations);case _Success() when success != null:
return success(_that.response);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RegisterState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.initial()';
}


}




/// @nodoc


class _Loading implements RegisterState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.loading()';
}


}




/// @nodoc


class _LocationsLoading implements RegisterState {
  const _LocationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.locationsLoading()';
}


}




/// @nodoc


class _LocationsLoaded implements RegisterState {
  const _LocationsLoaded(final  List<LocationModel> locations): _locations = locations;
  

 final  List<LocationModel> _locations;
 List<LocationModel> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}


/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationsLoadedCopyWith<_LocationsLoaded> get copyWith => __$LocationsLoadedCopyWithImpl<_LocationsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationsLoaded&&const DeepCollectionEquality().equals(other._locations, _locations));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_locations));

@override
String toString() {
  return 'RegisterState.locationsLoaded(locations: $locations)';
}


}

/// @nodoc
abstract mixin class _$LocationsLoadedCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$LocationsLoadedCopyWith(_LocationsLoaded value, $Res Function(_LocationsLoaded) _then) = __$LocationsLoadedCopyWithImpl;
@useResult
$Res call({
 List<LocationModel> locations
});




}
/// @nodoc
class __$LocationsLoadedCopyWithImpl<$Res>
    implements _$LocationsLoadedCopyWith<$Res> {
  __$LocationsLoadedCopyWithImpl(this._self, this._then);

  final _LocationsLoaded _self;
  final $Res Function(_LocationsLoaded) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locations = null,}) {
  return _then(_LocationsLoaded(
null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<LocationModel>,
  ));
}


}

/// @nodoc


class _LocationSelected implements RegisterState {
  const _LocationSelected({required this.locationId, required final  List<LocationModel> locations}): _locations = locations;
  

 final  int locationId;
 final  List<LocationModel> _locations;
 List<LocationModel> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}


/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationSelectedCopyWith<_LocationSelected> get copyWith => __$LocationSelectedCopyWithImpl<_LocationSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationSelected&&(identical(other.locationId, locationId) || other.locationId == locationId)&&const DeepCollectionEquality().equals(other._locations, _locations));
}


@override
int get hashCode => Object.hash(runtimeType,locationId,const DeepCollectionEquality().hash(_locations));

@override
String toString() {
  return 'RegisterState.locationSelected(locationId: $locationId, locations: $locations)';
}


}

/// @nodoc
abstract mixin class _$LocationSelectedCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$LocationSelectedCopyWith(_LocationSelected value, $Res Function(_LocationSelected) _then) = __$LocationSelectedCopyWithImpl;
@useResult
$Res call({
 int locationId, List<LocationModel> locations
});




}
/// @nodoc
class __$LocationSelectedCopyWithImpl<$Res>
    implements _$LocationSelectedCopyWith<$Res> {
  __$LocationSelectedCopyWithImpl(this._self, this._then);

  final _LocationSelected _self;
  final $Res Function(_LocationSelected) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locationId = null,Object? locations = null,}) {
  return _then(_LocationSelected(
locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<LocationModel>,
  ));
}


}

/// @nodoc


class _Success implements RegisterState {
  const _Success(this.response);
  

 final  UserResponseModel response;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'RegisterState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 UserResponseModel response
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_Success(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as UserResponseModel,
  ));
}


}

/// @nodoc


class _Error implements RegisterState {
  const _Error({required this.error});
  

 final  String error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'RegisterState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
