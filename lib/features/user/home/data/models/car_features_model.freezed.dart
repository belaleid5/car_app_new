// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_features_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarFeatureModel {

 int get id; String get name; String get value; String get image;
/// Create a copy of CarFeatureModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarFeatureModelCopyWith<CarFeatureModel> get copyWith => _$CarFeatureModelCopyWithImpl<CarFeatureModel>(this as CarFeatureModel, _$identity);

  /// Serializes this CarFeatureModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarFeatureModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,value,image);

@override
String toString() {
  return 'CarFeatureModel(id: $id, name: $name, value: $value, image: $image)';
}


}

/// @nodoc
abstract mixin class $CarFeatureModelCopyWith<$Res>  {
  factory $CarFeatureModelCopyWith(CarFeatureModel value, $Res Function(CarFeatureModel) _then) = _$CarFeatureModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String value, String image
});




}
/// @nodoc
class _$CarFeatureModelCopyWithImpl<$Res>
    implements $CarFeatureModelCopyWith<$Res> {
  _$CarFeatureModelCopyWithImpl(this._self, this._then);

  final CarFeatureModel _self;
  final $Res Function(CarFeatureModel) _then;

/// Create a copy of CarFeatureModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? value = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CarFeatureModel].
extension CarFeatureModelPatterns on CarFeatureModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarFeatureModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarFeatureModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarFeatureModel value)  $default,){
final _that = this;
switch (_that) {
case _CarFeatureModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarFeatureModel value)?  $default,){
final _that = this;
switch (_that) {
case _CarFeatureModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String value,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CarFeatureModel() when $default != null:
return $default(_that.id,_that.name,_that.value,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String value,  String image)  $default,) {final _that = this;
switch (_that) {
case _CarFeatureModel():
return $default(_that.id,_that.name,_that.value,_that.image);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String value,  String image)?  $default,) {final _that = this;
switch (_that) {
case _CarFeatureModel() when $default != null:
return $default(_that.id,_that.name,_that.value,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CarFeatureModel implements CarFeatureModel {
  const _CarFeatureModel({required this.id, required this.name, required this.value, required this.image});
  factory _CarFeatureModel.fromJson(Map<String, dynamic> json) => _$CarFeatureModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String value;
@override final  String image;

/// Create a copy of CarFeatureModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarFeatureModelCopyWith<_CarFeatureModel> get copyWith => __$CarFeatureModelCopyWithImpl<_CarFeatureModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarFeatureModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarFeatureModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,value,image);

@override
String toString() {
  return 'CarFeatureModel(id: $id, name: $name, value: $value, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CarFeatureModelCopyWith<$Res> implements $CarFeatureModelCopyWith<$Res> {
  factory _$CarFeatureModelCopyWith(_CarFeatureModel value, $Res Function(_CarFeatureModel) _then) = __$CarFeatureModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String value, String image
});




}
/// @nodoc
class __$CarFeatureModelCopyWithImpl<$Res>
    implements _$CarFeatureModelCopyWith<$Res> {
  __$CarFeatureModelCopyWithImpl(this._self, this._then);

  final _CarFeatureModel _self;
  final $Res Function(_CarFeatureModel) _then;

/// Create a copy of CarFeatureModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? value = null,Object? image = null,}) {
  return _then(_CarFeatureModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
