// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterSearchState {

 CarsFilter get filter;
/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterSearchStateCopyWith<FilterSearchState> get copyWith => _$FilterSearchStateCopyWithImpl<FilterSearchState>(this as FilterSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterSearchState&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'FilterSearchState(filter: $filter)';
}


}

/// @nodoc
abstract mixin class $FilterSearchStateCopyWith<$Res>  {
  factory $FilterSearchStateCopyWith(FilterSearchState value, $Res Function(FilterSearchState) _then) = _$FilterSearchStateCopyWithImpl;
@useResult
$Res call({
 CarsFilter filter
});




}
/// @nodoc
class _$FilterSearchStateCopyWithImpl<$Res>
    implements $FilterSearchStateCopyWith<$Res> {
  _$FilterSearchStateCopyWithImpl(this._self, this._then);

  final FilterSearchState _self;
  final $Res Function(FilterSearchState) _then;

/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,}) {
  return _then(_self.copyWith(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CarsFilter,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterSearchState].
extension FilterSearchStatePatterns on FilterSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CarsFilter filter)?  initial,TResult Function( CarsFilter filter)?  loading,TResult Function( List<CarsModel> cars,  CarsFilter filter,  int? currentPage,  int? lastPage,  int? total,  bool hasMore)?  success,TResult Function( String message,  CarsFilter filter,  List<CarsModel>? previousCars)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.filter);case _Loading() when loading != null:
return loading(_that.filter);case _Success() when success != null:
return success(_that.cars,_that.filter,_that.currentPage,_that.lastPage,_that.total,_that.hasMore);case _Error() when error != null:
return error(_that.message,_that.filter,_that.previousCars);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CarsFilter filter)  initial,required TResult Function( CarsFilter filter)  loading,required TResult Function( List<CarsModel> cars,  CarsFilter filter,  int? currentPage,  int? lastPage,  int? total,  bool hasMore)  success,required TResult Function( String message,  CarsFilter filter,  List<CarsModel>? previousCars)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.filter);case _Loading():
return loading(_that.filter);case _Success():
return success(_that.cars,_that.filter,_that.currentPage,_that.lastPage,_that.total,_that.hasMore);case _Error():
return error(_that.message,_that.filter,_that.previousCars);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CarsFilter filter)?  initial,TResult? Function( CarsFilter filter)?  loading,TResult? Function( List<CarsModel> cars,  CarsFilter filter,  int? currentPage,  int? lastPage,  int? total,  bool hasMore)?  success,TResult? Function( String message,  CarsFilter filter,  List<CarsModel>? previousCars)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.filter);case _Loading() when loading != null:
return loading(_that.filter);case _Success() when success != null:
return success(_that.cars,_that.filter,_that.currentPage,_that.lastPage,_that.total,_that.hasMore);case _Error() when error != null:
return error(_that.message,_that.filter,_that.previousCars);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements FilterSearchState {
  const _Initial({required this.filter});
  

@override final  CarsFilter filter;

/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'FilterSearchState.initial(filter: $filter)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $FilterSearchStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 CarsFilter filter
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(_Initial(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CarsFilter,
  ));
}


}

/// @nodoc


class _Loading implements FilterSearchState {
  const _Loading({required this.filter});
  

@override final  CarsFilter filter;

/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingCopyWith<_Loading> get copyWith => __$LoadingCopyWithImpl<_Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'FilterSearchState.loading(filter: $filter)';
}


}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res> implements $FilterSearchStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) _then) = __$LoadingCopyWithImpl;
@override @useResult
$Res call({
 CarsFilter filter
});




}
/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(this._self, this._then);

  final _Loading _self;
  final $Res Function(_Loading) _then;

/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(_Loading(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CarsFilter,
  ));
}


}

/// @nodoc


class _Success implements FilterSearchState {
  const _Success({required final  List<CarsModel> cars, required this.filter, this.currentPage, this.lastPage, this.total, this.hasMore = false}): _cars = cars;
  

 final  List<CarsModel> _cars;
 List<CarsModel> get cars {
  if (_cars is EqualUnmodifiableListView) return _cars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cars);
}

@override final  CarsFilter filter;
 final  int? currentPage;
 final  int? lastPage;
 final  int? total;
@JsonKey() final  bool hasMore;

/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._cars, _cars)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cars),filter,currentPage,lastPage,total,hasMore);

@override
String toString() {
  return 'FilterSearchState.success(cars: $cars, filter: $filter, currentPage: $currentPage, lastPage: $lastPage, total: $total, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $FilterSearchStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@override @useResult
$Res call({
 List<CarsModel> cars, CarsFilter filter, int? currentPage, int? lastPage, int? total, bool hasMore
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cars = null,Object? filter = null,Object? currentPage = freezed,Object? lastPage = freezed,Object? total = freezed,Object? hasMore = null,}) {
  return _then(_Success(
cars: null == cars ? _self._cars : cars // ignore: cast_nullable_to_non_nullable
as List<CarsModel>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CarsFilter,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements FilterSearchState {
  const _Error({required this.message, required this.filter, final  List<CarsModel>? previousCars}): _previousCars = previousCars;
  

 final  String message;
@override final  CarsFilter filter;
 final  List<CarsModel>? _previousCars;
 List<CarsModel>? get previousCars {
  final value = _previousCars;
  if (value == null) return null;
  if (_previousCars is EqualUnmodifiableListView) return _previousCars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message)&&(identical(other.filter, filter) || other.filter == filter)&&const DeepCollectionEquality().equals(other._previousCars, _previousCars));
}


@override
int get hashCode => Object.hash(runtimeType,message,filter,const DeepCollectionEquality().hash(_previousCars));

@override
String toString() {
  return 'FilterSearchState.error(message: $message, filter: $filter, previousCars: $previousCars)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $FilterSearchStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, CarsFilter filter, List<CarsModel>? previousCars
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of FilterSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? filter = null,Object? previousCars = freezed,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CarsFilter,previousCars: freezed == previousCars ? _self._previousCars : previousCars // ignore: cast_nullable_to_non_nullable
as List<CarsModel>?,
  ));
}


}

// dart format on
