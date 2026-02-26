// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchPagination {

 int get currentPage; int get lastPage; bool get hasMore; int get total;
/// Create a copy of SearchPagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPaginationCopyWith<SearchPagination> get copyWith => _$SearchPaginationCopyWithImpl<SearchPagination>(this as SearchPagination, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,hasMore,total);

@override
String toString() {
  return 'SearchPagination(currentPage: $currentPage, lastPage: $lastPage, hasMore: $hasMore, total: $total)';
}


}

/// @nodoc
abstract mixin class $SearchPaginationCopyWith<$Res>  {
  factory $SearchPaginationCopyWith(SearchPagination value, $Res Function(SearchPagination) _then) = _$SearchPaginationCopyWithImpl;
@useResult
$Res call({
 int currentPage, int lastPage, bool hasMore, int total
});




}
/// @nodoc
class _$SearchPaginationCopyWithImpl<$Res>
    implements $SearchPaginationCopyWith<$Res> {
  _$SearchPaginationCopyWithImpl(this._self, this._then);

  final SearchPagination _self;
  final $Res Function(SearchPagination) _then;

/// Create a copy of SearchPagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? lastPage = null,Object? hasMore = null,Object? total = null,}) {
  return _then(_self.copyWith(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchPagination].
extension SearchPaginationPatterns on SearchPagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchPagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchPagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchPagination value)  $default,){
final _that = this;
switch (_that) {
case _SearchPagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchPagination value)?  $default,){
final _that = this;
switch (_that) {
case _SearchPagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentPage,  int lastPage,  bool hasMore,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchPagination() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.hasMore,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentPage,  int lastPage,  bool hasMore,  int total)  $default,) {final _that = this;
switch (_that) {
case _SearchPagination():
return $default(_that.currentPage,_that.lastPage,_that.hasMore,_that.total);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentPage,  int lastPage,  bool hasMore,  int total)?  $default,) {final _that = this;
switch (_that) {
case _SearchPagination() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.hasMore,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _SearchPagination implements SearchPagination {
  const _SearchPagination({this.currentPage = 1, this.lastPage = 1, this.hasMore = false, this.total = 0});
  

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int lastPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int total;

/// Create a copy of SearchPagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchPaginationCopyWith<_SearchPagination> get copyWith => __$SearchPaginationCopyWithImpl<_SearchPagination>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchPagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,hasMore,total);

@override
String toString() {
  return 'SearchPagination(currentPage: $currentPage, lastPage: $lastPage, hasMore: $hasMore, total: $total)';
}


}

/// @nodoc
abstract mixin class _$SearchPaginationCopyWith<$Res> implements $SearchPaginationCopyWith<$Res> {
  factory _$SearchPaginationCopyWith(_SearchPagination value, $Res Function(_SearchPagination) _then) = __$SearchPaginationCopyWithImpl;
@override @useResult
$Res call({
 int currentPage, int lastPage, bool hasMore, int total
});




}
/// @nodoc
class __$SearchPaginationCopyWithImpl<$Res>
    implements _$SearchPaginationCopyWith<$Res> {
  __$SearchPaginationCopyWithImpl(this._self, this._then);

  final _SearchPagination _self;
  final $Res Function(_SearchPagination) _then;

/// Create a copy of SearchPagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? lastPage = null,Object? hasMore = null,Object? total = null,}) {
  return _then(_SearchPagination(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
