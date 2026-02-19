// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nerest_car_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NerestCarsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NerestCarsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NerestCarsEvent()';
}


}

/// @nodoc
class $NerestCarsEventCopyWith<$Res>  {
$NerestCarsEventCopyWith(NerestCarsEvent _, $Res Function(NerestCarsEvent) __);
}


/// Adds pattern-matching-related methods to [NerestCarsEvent].
extension NerestCarsEventPatterns on NerestCarsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchNerestCars value)?  fetchNerestCars,TResult Function( LoadMoreNerestCars value)?  loadMoreNerestCars,TResult Function( RefreshNerestCars value)?  refreshNerestCars,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchNerestCars() when fetchNerestCars != null:
return fetchNerestCars(_that);case LoadMoreNerestCars() when loadMoreNerestCars != null:
return loadMoreNerestCars(_that);case RefreshNerestCars() when refreshNerestCars != null:
return refreshNerestCars(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchNerestCars value)  fetchNerestCars,required TResult Function( LoadMoreNerestCars value)  loadMoreNerestCars,required TResult Function( RefreshNerestCars value)  refreshNerestCars,}){
final _that = this;
switch (_that) {
case FetchNerestCars():
return fetchNerestCars(_that);case LoadMoreNerestCars():
return loadMoreNerestCars(_that);case RefreshNerestCars():
return refreshNerestCars(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchNerestCars value)?  fetchNerestCars,TResult? Function( LoadMoreNerestCars value)?  loadMoreNerestCars,TResult? Function( RefreshNerestCars value)?  refreshNerestCars,}){
final _that = this;
switch (_that) {
case FetchNerestCars() when fetchNerestCars != null:
return fetchNerestCars(_that);case LoadMoreNerestCars() when loadMoreNerestCars != null:
return loadMoreNerestCars(_that);case RefreshNerestCars() when refreshNerestCars != null:
return refreshNerestCars(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  fetchNerestCars,TResult Function()?  loadMoreNerestCars,TResult Function()?  refreshNerestCars,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchNerestCars() when fetchNerestCars != null:
return fetchNerestCars(_that.page);case LoadMoreNerestCars() when loadMoreNerestCars != null:
return loadMoreNerestCars();case RefreshNerestCars() when refreshNerestCars != null:
return refreshNerestCars();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  fetchNerestCars,required TResult Function()  loadMoreNerestCars,required TResult Function()  refreshNerestCars,}) {final _that = this;
switch (_that) {
case FetchNerestCars():
return fetchNerestCars(_that.page);case LoadMoreNerestCars():
return loadMoreNerestCars();case RefreshNerestCars():
return refreshNerestCars();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  fetchNerestCars,TResult? Function()?  loadMoreNerestCars,TResult? Function()?  refreshNerestCars,}) {final _that = this;
switch (_that) {
case FetchNerestCars() when fetchNerestCars != null:
return fetchNerestCars(_that.page);case LoadMoreNerestCars() when loadMoreNerestCars != null:
return loadMoreNerestCars();case RefreshNerestCars() when refreshNerestCars != null:
return refreshNerestCars();case _:
  return null;

}
}

}

/// @nodoc


class FetchNerestCars implements NerestCarsEvent {
  const FetchNerestCars({this.page = 1});
  

@JsonKey() final  int page;

/// Create a copy of NerestCarsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchNerestCarsCopyWith<FetchNerestCars> get copyWith => _$FetchNerestCarsCopyWithImpl<FetchNerestCars>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchNerestCars&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'NerestCarsEvent.fetchNerestCars(page: $page)';
}


}

/// @nodoc
abstract mixin class $FetchNerestCarsCopyWith<$Res> implements $NerestCarsEventCopyWith<$Res> {
  factory $FetchNerestCarsCopyWith(FetchNerestCars value, $Res Function(FetchNerestCars) _then) = _$FetchNerestCarsCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$FetchNerestCarsCopyWithImpl<$Res>
    implements $FetchNerestCarsCopyWith<$Res> {
  _$FetchNerestCarsCopyWithImpl(this._self, this._then);

  final FetchNerestCars _self;
  final $Res Function(FetchNerestCars) _then;

/// Create a copy of NerestCarsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(FetchNerestCars(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadMoreNerestCars implements NerestCarsEvent {
  const LoadMoreNerestCars();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreNerestCars);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NerestCarsEvent.loadMoreNerestCars()';
}


}




/// @nodoc


class RefreshNerestCars implements NerestCarsEvent {
  const RefreshNerestCars();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshNerestCars);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NerestCarsEvent.refreshNerestCars()';
}


}




// dart format on
