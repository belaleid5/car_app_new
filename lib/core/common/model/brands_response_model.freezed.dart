// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrandsResponseModel {

 List<BrandModel> get data; BrandsMeta get meta;
/// Create a copy of BrandsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandsResponseModelCopyWith<BrandsResponseModel> get copyWith => _$BrandsResponseModelCopyWithImpl<BrandsResponseModel>(this as BrandsResponseModel, _$identity);

  /// Serializes this BrandsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsResponseModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'BrandsResponseModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $BrandsResponseModelCopyWith<$Res>  {
  factory $BrandsResponseModelCopyWith(BrandsResponseModel value, $Res Function(BrandsResponseModel) _then) = _$BrandsResponseModelCopyWithImpl;
@useResult
$Res call({
 List<BrandModel> data, BrandsMeta meta
});


$BrandsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$BrandsResponseModelCopyWithImpl<$Res>
    implements $BrandsResponseModelCopyWith<$Res> {
  _$BrandsResponseModelCopyWithImpl(this._self, this._then);

  final BrandsResponseModel _self;
  final $Res Function(BrandsResponseModel) _then;

/// Create a copy of BrandsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BrandModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as BrandsMeta,
  ));
}
/// Create a copy of BrandsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandsMetaCopyWith<$Res> get meta {
  
  return $BrandsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [BrandsResponseModel].
extension BrandsResponseModelPatterns on BrandsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _BrandsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _BrandsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BrandModel> data,  BrandsMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandsResponseModel() when $default != null:
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BrandModel> data,  BrandsMeta meta)  $default,) {final _that = this;
switch (_that) {
case _BrandsResponseModel():
return $default(_that.data,_that.meta);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BrandModel> data,  BrandsMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _BrandsResponseModel() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandsResponseModel implements BrandsResponseModel {
  const _BrandsResponseModel({required final  List<BrandModel> data, required this.meta}): _data = data;
  factory _BrandsResponseModel.fromJson(Map<String, dynamic> json) => _$BrandsResponseModelFromJson(json);

 final  List<BrandModel> _data;
@override List<BrandModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  BrandsMeta meta;

/// Create a copy of BrandsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandsResponseModelCopyWith<_BrandsResponseModel> get copyWith => __$BrandsResponseModelCopyWithImpl<_BrandsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandsResponseModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'BrandsResponseModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BrandsResponseModelCopyWith<$Res> implements $BrandsResponseModelCopyWith<$Res> {
  factory _$BrandsResponseModelCopyWith(_BrandsResponseModel value, $Res Function(_BrandsResponseModel) _then) = __$BrandsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<BrandModel> data, BrandsMeta meta
});


@override $BrandsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$BrandsResponseModelCopyWithImpl<$Res>
    implements _$BrandsResponseModelCopyWith<$Res> {
  __$BrandsResponseModelCopyWithImpl(this._self, this._then);

  final _BrandsResponseModel _self;
  final $Res Function(_BrandsResponseModel) _then;

/// Create a copy of BrandsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,}) {
  return _then(_BrandsResponseModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BrandModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as BrandsMeta,
  ));
}

/// Create a copy of BrandsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandsMetaCopyWith<$Res> get meta {
  
  return $BrandsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$BrandsMeta {

@JsonKey(name: 'current_page') int get currentPage;@JsonKey(name: 'last_page') int get lastPage;@JsonKey(name: 'per_page') int? get perPage; int? get total;
/// Create a copy of BrandsMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandsMetaCopyWith<BrandsMeta> get copyWith => _$BrandsMetaCopyWithImpl<BrandsMeta>(this as BrandsMeta, _$identity);

  /// Serializes this BrandsMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total);

@override
String toString() {
  return 'BrandsMeta(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
}


}

/// @nodoc
abstract mixin class $BrandsMetaCopyWith<$Res>  {
  factory $BrandsMetaCopyWith(BrandsMeta value, $Res Function(BrandsMeta) _then) = _$BrandsMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage,@JsonKey(name: 'per_page') int? perPage, int? total
});




}
/// @nodoc
class _$BrandsMetaCopyWithImpl<$Res>
    implements $BrandsMetaCopyWith<$Res> {
  _$BrandsMetaCopyWithImpl(this._self, this._then);

  final BrandsMeta _self;
  final $Res Function(BrandsMeta) _then;

/// Create a copy of BrandsMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? lastPage = null,Object? perPage = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandsMeta].
extension BrandsMetaPatterns on BrandsMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandsMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandsMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandsMeta value)  $default,){
final _that = this;
switch (_that) {
case _BrandsMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandsMeta value)?  $default,){
final _that = this;
switch (_that) {
case _BrandsMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage, @JsonKey(name: 'per_page')  int? perPage,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandsMeta() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage, @JsonKey(name: 'per_page')  int? perPage,  int? total)  $default,) {final _that = this;
switch (_that) {
case _BrandsMeta():
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int currentPage, @JsonKey(name: 'last_page')  int lastPage, @JsonKey(name: 'per_page')  int? perPage,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _BrandsMeta() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandsMeta implements BrandsMeta {
  const _BrandsMeta({@JsonKey(name: 'current_page') required this.currentPage, @JsonKey(name: 'last_page') required this.lastPage, @JsonKey(name: 'per_page') this.perPage, this.total});
  factory _BrandsMeta.fromJson(Map<String, dynamic> json) => _$BrandsMetaFromJson(json);

@override@JsonKey(name: 'current_page') final  int currentPage;
@override@JsonKey(name: 'last_page') final  int lastPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override final  int? total;

/// Create a copy of BrandsMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandsMetaCopyWith<_BrandsMeta> get copyWith => __$BrandsMetaCopyWithImpl<_BrandsMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandsMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandsMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total);

@override
String toString() {
  return 'BrandsMeta(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
}


}

/// @nodoc
abstract mixin class _$BrandsMetaCopyWith<$Res> implements $BrandsMetaCopyWith<$Res> {
  factory _$BrandsMetaCopyWith(_BrandsMeta value, $Res Function(_BrandsMeta) _then) = __$BrandsMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage,@JsonKey(name: 'per_page') int? perPage, int? total
});




}
/// @nodoc
class __$BrandsMetaCopyWithImpl<$Res>
    implements _$BrandsMetaCopyWith<$Res> {
  __$BrandsMetaCopyWithImpl(this._self, this._then);

  final _BrandsMeta _self;
  final $Res Function(_BrandsMeta) _then;

/// Create a copy of BrandsMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? lastPage = null,Object? perPage = freezed,Object? total = freezed,}) {
  return _then(_BrandsMeta(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
