// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bestcars_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BestCarsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BestCarsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BestCarsEvent()';
}


}

/// @nodoc
class $BestCarsEventCopyWith<$Res>  {
$BestCarsEventCopyWith(BestCarsEvent _, $Res Function(BestCarsEvent) __);
}


/// Adds pattern-matching-related methods to [BestCarsEvent].
extension BestCarsEventPatterns on BestCarsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchBestCars value)?  fetchBestCars,TResult Function( _LoadMoreBestCars value)?  loadMoreBestCars,TResult Function( _RefreshBestCars value)?  refreshBestCars,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchBestCars() when fetchBestCars != null:
return fetchBestCars(_that);case _LoadMoreBestCars() when loadMoreBestCars != null:
return loadMoreBestCars(_that);case _RefreshBestCars() when refreshBestCars != null:
return refreshBestCars(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchBestCars value)  fetchBestCars,required TResult Function( _LoadMoreBestCars value)  loadMoreBestCars,required TResult Function( _RefreshBestCars value)  refreshBestCars,}){
final _that = this;
switch (_that) {
case _FetchBestCars():
return fetchBestCars(_that);case _LoadMoreBestCars():
return loadMoreBestCars(_that);case _RefreshBestCars():
return refreshBestCars(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchBestCars value)?  fetchBestCars,TResult? Function( _LoadMoreBestCars value)?  loadMoreBestCars,TResult? Function( _RefreshBestCars value)?  refreshBestCars,}){
final _that = this;
switch (_that) {
case _FetchBestCars() when fetchBestCars != null:
return fetchBestCars(_that);case _LoadMoreBestCars() when loadMoreBestCars != null:
return loadMoreBestCars(_that);case _RefreshBestCars() when refreshBestCars != null:
return refreshBestCars(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  fetchBestCars,TResult Function()?  loadMoreBestCars,TResult Function()?  refreshBestCars,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchBestCars() when fetchBestCars != null:
return fetchBestCars(_that.page);case _LoadMoreBestCars() when loadMoreBestCars != null:
return loadMoreBestCars();case _RefreshBestCars() when refreshBestCars != null:
return refreshBestCars();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  fetchBestCars,required TResult Function()  loadMoreBestCars,required TResult Function()  refreshBestCars,}) {final _that = this;
switch (_that) {
case _FetchBestCars():
return fetchBestCars(_that.page);case _LoadMoreBestCars():
return loadMoreBestCars();case _RefreshBestCars():
return refreshBestCars();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  fetchBestCars,TResult? Function()?  loadMoreBestCars,TResult? Function()?  refreshBestCars,}) {final _that = this;
switch (_that) {
case _FetchBestCars() when fetchBestCars != null:
return fetchBestCars(_that.page);case _LoadMoreBestCars() when loadMoreBestCars != null:
return loadMoreBestCars();case _RefreshBestCars() when refreshBestCars != null:
return refreshBestCars();case _:
  return null;

}
}

}

/// @nodoc


class _FetchBestCars implements BestCarsEvent {
  const _FetchBestCars({this.page = 1});
  

@JsonKey() final  int page;

/// Create a copy of BestCarsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchBestCarsCopyWith<_FetchBestCars> get copyWith => __$FetchBestCarsCopyWithImpl<_FetchBestCars>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchBestCars&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'BestCarsEvent.fetchBestCars(page: $page)';
}


}

/// @nodoc
abstract mixin class _$FetchBestCarsCopyWith<$Res> implements $BestCarsEventCopyWith<$Res> {
  factory _$FetchBestCarsCopyWith(_FetchBestCars value, $Res Function(_FetchBestCars) _then) = __$FetchBestCarsCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class __$FetchBestCarsCopyWithImpl<$Res>
    implements _$FetchBestCarsCopyWith<$Res> {
  __$FetchBestCarsCopyWithImpl(this._self, this._then);

  final _FetchBestCars _self;
  final $Res Function(_FetchBestCars) _then;

/// Create a copy of BestCarsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_FetchBestCars(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadMoreBestCars implements BestCarsEvent {
  const _LoadMoreBestCars();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreBestCars);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BestCarsEvent.loadMoreBestCars()';
}


}




/// @nodoc


class _RefreshBestCars implements BestCarsEvent {
  const _RefreshBestCars();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshBestCars);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BestCarsEvent.refreshBestCars()';
}


}




// dart format on
