// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_code_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfirmCodeResponseModel {

 UserModel get user; String get message;
/// Create a copy of ConfirmCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmCodeResponseModelCopyWith<ConfirmCodeResponseModel> get copyWith => _$ConfirmCodeResponseModelCopyWithImpl<ConfirmCodeResponseModel>(this as ConfirmCodeResponseModel, _$identity);

  /// Serializes this ConfirmCodeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmCodeResponseModel&&(identical(other.user, user) || other.user == user)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,message);

@override
String toString() {
  return 'ConfirmCodeResponseModel(user: $user, message: $message)';
}


}

/// @nodoc
abstract mixin class $ConfirmCodeResponseModelCopyWith<$Res>  {
  factory $ConfirmCodeResponseModelCopyWith(ConfirmCodeResponseModel value, $Res Function(ConfirmCodeResponseModel) _then) = _$ConfirmCodeResponseModelCopyWithImpl;
@useResult
$Res call({
 UserModel user, String message
});


$UserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$ConfirmCodeResponseModelCopyWithImpl<$Res>
    implements $ConfirmCodeResponseModelCopyWith<$Res> {
  _$ConfirmCodeResponseModelCopyWithImpl(this._self, this._then);

  final ConfirmCodeResponseModel _self;
  final $Res Function(ConfirmCodeResponseModel) _then;

/// Create a copy of ConfirmCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? message = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ConfirmCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConfirmCodeResponseModel].
extension ConfirmCodeResponseModelPatterns on ConfirmCodeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmCodeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmCodeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmCodeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmCodeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmCodeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmCodeResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserModel user,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmCodeResponseModel() when $default != null:
return $default(_that.user,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserModel user,  String message)  $default,) {final _that = this;
switch (_that) {
case _ConfirmCodeResponseModel():
return $default(_that.user,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserModel user,  String message)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmCodeResponseModel() when $default != null:
return $default(_that.user,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfirmCodeResponseModel implements ConfirmCodeResponseModel {
  const _ConfirmCodeResponseModel({required this.user, required this.message});
  factory _ConfirmCodeResponseModel.fromJson(Map<String, dynamic> json) => _$ConfirmCodeResponseModelFromJson(json);

@override final  UserModel user;
@override final  String message;

/// Create a copy of ConfirmCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmCodeResponseModelCopyWith<_ConfirmCodeResponseModel> get copyWith => __$ConfirmCodeResponseModelCopyWithImpl<_ConfirmCodeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmCodeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmCodeResponseModel&&(identical(other.user, user) || other.user == user)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,message);

@override
String toString() {
  return 'ConfirmCodeResponseModel(user: $user, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ConfirmCodeResponseModelCopyWith<$Res> implements $ConfirmCodeResponseModelCopyWith<$Res> {
  factory _$ConfirmCodeResponseModelCopyWith(_ConfirmCodeResponseModel value, $Res Function(_ConfirmCodeResponseModel) _then) = __$ConfirmCodeResponseModelCopyWithImpl;
@override @useResult
$Res call({
 UserModel user, String message
});


@override $UserModelCopyWith<$Res> get user;

}
/// @nodoc
class __$ConfirmCodeResponseModelCopyWithImpl<$Res>
    implements _$ConfirmCodeResponseModelCopyWith<$Res> {
  __$ConfirmCodeResponseModelCopyWithImpl(this._self, this._then);

  final _ConfirmCodeResponseModel _self;
  final $Res Function(_ConfirmCodeResponseModel) _then;

/// Create a copy of ConfirmCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? message = null,}) {
  return _then(_ConfirmCodeResponseModel(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ConfirmCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
