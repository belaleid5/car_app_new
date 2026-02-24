// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarsResponseModel {

 List<CarsModel> get data; CarsMeta get meta;
/// Create a copy of CarsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarsResponseModelCopyWith<CarsResponseModel> get copyWith => _$CarsResponseModelCopyWithImpl<CarsResponseModel>(this as CarsResponseModel, _$identity);

  /// Serializes this CarsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarsResponseModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'CarsResponseModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $CarsResponseModelCopyWith<$Res>  {
  factory $CarsResponseModelCopyWith(CarsResponseModel value, $Res Function(CarsResponseModel) _then) = _$CarsResponseModelCopyWithImpl;
@useResult
$Res call({
 List<CarsModel> data, CarsMeta meta
});


$CarsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$CarsResponseModelCopyWithImpl<$Res>
    implements $CarsResponseModelCopyWith<$Res> {
  _$CarsResponseModelCopyWithImpl(this._self, this._then);

  final CarsResponseModel _self;
  final $Res Function(CarsResponseModel) _then;

/// Create a copy of CarsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CarsModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CarsMeta,
  ));
}
/// Create a copy of CarsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CarsMetaCopyWith<$Res> get meta {
  
  return $CarsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CarsResponseModel].
extension CarsResponseModelPatterns on CarsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CarsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CarsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CarsModel> data,  CarsMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CarsResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CarsModel> data,  CarsMeta meta)  $default,) {final _that = this;
switch (_that) {
case _CarsResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CarsModel> data,  CarsMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _CarsResponseModel() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CarsResponseModel implements CarsResponseModel {
  const _CarsResponseModel({required final  List<CarsModel> data, required this.meta}): _data = data;
  factory _CarsResponseModel.fromJson(Map<String, dynamic> json) => _$CarsResponseModelFromJson(json);

 final  List<CarsModel> _data;
@override List<CarsModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CarsMeta meta;

/// Create a copy of CarsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarsResponseModelCopyWith<_CarsResponseModel> get copyWith => __$CarsResponseModelCopyWithImpl<_CarsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarsResponseModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'CarsResponseModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$CarsResponseModelCopyWith<$Res> implements $CarsResponseModelCopyWith<$Res> {
  factory _$CarsResponseModelCopyWith(_CarsResponseModel value, $Res Function(_CarsResponseModel) _then) = __$CarsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<CarsModel> data, CarsMeta meta
});


@override $CarsMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$CarsResponseModelCopyWithImpl<$Res>
    implements _$CarsResponseModelCopyWith<$Res> {
  __$CarsResponseModelCopyWithImpl(this._self, this._then);

  final _CarsResponseModel _self;
  final $Res Function(_CarsResponseModel) _then;

/// Create a copy of CarsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,}) {
  return _then(_CarsResponseModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CarsModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CarsMeta,
  ));
}

/// Create a copy of CarsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CarsMetaCopyWith<$Res> get meta {
  
  return $CarsMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$CarsMeta {

@JsonKey(name: 'current_page') int get currentPage;@JsonKey(name: 'last_page') int get lastPage;@JsonKey(name: 'per_page') int? get perPage; int? get total;
/// Create a copy of CarsMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarsMetaCopyWith<CarsMeta> get copyWith => _$CarsMetaCopyWithImpl<CarsMeta>(this as CarsMeta, _$identity);

  /// Serializes this CarsMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarsMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total);

@override
String toString() {
  return 'CarsMeta(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
}


}

/// @nodoc
abstract mixin class $CarsMetaCopyWith<$Res>  {
  factory $CarsMetaCopyWith(CarsMeta value, $Res Function(CarsMeta) _then) = _$CarsMetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage,@JsonKey(name: 'per_page') int? perPage, int? total
});




}
/// @nodoc
class _$CarsMetaCopyWithImpl<$Res>
    implements $CarsMetaCopyWith<$Res> {
  _$CarsMetaCopyWithImpl(this._self, this._then);

  final CarsMeta _self;
  final $Res Function(CarsMeta) _then;

/// Create a copy of CarsMeta
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


/// Adds pattern-matching-related methods to [CarsMeta].
extension CarsMetaPatterns on CarsMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarsMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarsMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarsMeta value)  $default,){
final _that = this;
switch (_that) {
case _CarsMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarsMeta value)?  $default,){
final _that = this;
switch (_that) {
case _CarsMeta() when $default != null:
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
case _CarsMeta() when $default != null:
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
case _CarsMeta():
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
case _CarsMeta() when $default != null:
return $default(_that.currentPage,_that.lastPage,_that.perPage,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CarsMeta implements CarsMeta {
  const _CarsMeta({@JsonKey(name: 'current_page') required this.currentPage, @JsonKey(name: 'last_page') required this.lastPage, @JsonKey(name: 'per_page') this.perPage, this.total});
  factory _CarsMeta.fromJson(Map<String, dynamic> json) => _$CarsMetaFromJson(json);

@override@JsonKey(name: 'current_page') final  int currentPage;
@override@JsonKey(name: 'last_page') final  int lastPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override final  int? total;

/// Create a copy of CarsMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarsMetaCopyWith<_CarsMeta> get copyWith => __$CarsMetaCopyWithImpl<_CarsMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarsMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarsMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,lastPage,perPage,total);

@override
String toString() {
  return 'CarsMeta(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CarsMetaCopyWith<$Res> implements $CarsMetaCopyWith<$Res> {
  factory _$CarsMetaCopyWith(_CarsMeta value, $Res Function(_CarsMeta) _then) = __$CarsMetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int currentPage,@JsonKey(name: 'last_page') int lastPage,@JsonKey(name: 'per_page') int? perPage, int? total
});




}
/// @nodoc
class __$CarsMetaCopyWithImpl<$Res>
    implements _$CarsMetaCopyWith<$Res> {
  __$CarsMetaCopyWithImpl(this._self, this._then);

  final _CarsMeta _self;
  final $Res Function(_CarsMeta) _then;

/// Create a copy of CarsMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? lastPage = null,Object? perPage = freezed,Object? total = freezed,}) {
  return _then(_CarsMeta(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
