// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_code_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfirmCodeRequestModel {

 String get code;@JsonKey(name: 'verify_token') String get verifyToken;@JsonKey(name: 'access_token') String? get accessToken;
/// Create a copy of ConfirmCodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmCodeRequestModelCopyWith<ConfirmCodeRequestModel> get copyWith => _$ConfirmCodeRequestModelCopyWithImpl<ConfirmCodeRequestModel>(this as ConfirmCodeRequestModel, _$identity);

  /// Serializes this ConfirmCodeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmCodeRequestModel&&(identical(other.code, code) || other.code == code)&&(identical(other.verifyToken, verifyToken) || other.verifyToken == verifyToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,verifyToken,accessToken);

@override
String toString() {
  return 'ConfirmCodeRequestModel(code: $code, verifyToken: $verifyToken, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $ConfirmCodeRequestModelCopyWith<$Res>  {
  factory $ConfirmCodeRequestModelCopyWith(ConfirmCodeRequestModel value, $Res Function(ConfirmCodeRequestModel) _then) = _$ConfirmCodeRequestModelCopyWithImpl;
@useResult
$Res call({
 String code,@JsonKey(name: 'verify_token') String verifyToken,@JsonKey(name: 'access_token') String? accessToken
});




}
/// @nodoc
class _$ConfirmCodeRequestModelCopyWithImpl<$Res>
    implements $ConfirmCodeRequestModelCopyWith<$Res> {
  _$ConfirmCodeRequestModelCopyWithImpl(this._self, this._then);

  final ConfirmCodeRequestModel _self;
  final $Res Function(ConfirmCodeRequestModel) _then;

/// Create a copy of ConfirmCodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? verifyToken = null,Object? accessToken = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,verifyToken: null == verifyToken ? _self.verifyToken : verifyToken // ignore: cast_nullable_to_non_nullable
as String,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfirmCodeRequestModel].
extension ConfirmCodeRequestModelPatterns on ConfirmCodeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmCodeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmCodeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmCodeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmCodeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmCodeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmCodeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code, @JsonKey(name: 'verify_token')  String verifyToken, @JsonKey(name: 'access_token')  String? accessToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmCodeRequestModel() when $default != null:
return $default(_that.code,_that.verifyToken,_that.accessToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code, @JsonKey(name: 'verify_token')  String verifyToken, @JsonKey(name: 'access_token')  String? accessToken)  $default,) {final _that = this;
switch (_that) {
case _ConfirmCodeRequestModel():
return $default(_that.code,_that.verifyToken,_that.accessToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code, @JsonKey(name: 'verify_token')  String verifyToken, @JsonKey(name: 'access_token')  String? accessToken)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmCodeRequestModel() when $default != null:
return $default(_that.code,_that.verifyToken,_that.accessToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfirmCodeRequestModel implements ConfirmCodeRequestModel {
  const _ConfirmCodeRequestModel({required this.code, @JsonKey(name: 'verify_token') required this.verifyToken, @JsonKey(name: 'access_token') this.accessToken});
  factory _ConfirmCodeRequestModel.fromJson(Map<String, dynamic> json) => _$ConfirmCodeRequestModelFromJson(json);

@override final  String code;
@override@JsonKey(name: 'verify_token') final  String verifyToken;
@override@JsonKey(name: 'access_token') final  String? accessToken;

/// Create a copy of ConfirmCodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmCodeRequestModelCopyWith<_ConfirmCodeRequestModel> get copyWith => __$ConfirmCodeRequestModelCopyWithImpl<_ConfirmCodeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmCodeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmCodeRequestModel&&(identical(other.code, code) || other.code == code)&&(identical(other.verifyToken, verifyToken) || other.verifyToken == verifyToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,verifyToken,accessToken);

@override
String toString() {
  return 'ConfirmCodeRequestModel(code: $code, verifyToken: $verifyToken, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$ConfirmCodeRequestModelCopyWith<$Res> implements $ConfirmCodeRequestModelCopyWith<$Res> {
  factory _$ConfirmCodeRequestModelCopyWith(_ConfirmCodeRequestModel value, $Res Function(_ConfirmCodeRequestModel) _then) = __$ConfirmCodeRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String code,@JsonKey(name: 'verify_token') String verifyToken,@JsonKey(name: 'access_token') String? accessToken
});




}
/// @nodoc
class __$ConfirmCodeRequestModelCopyWithImpl<$Res>
    implements _$ConfirmCodeRequestModelCopyWith<$Res> {
  __$ConfirmCodeRequestModelCopyWithImpl(this._self, this._then);

  final _ConfirmCodeRequestModel _self;
  final $Res Function(_ConfirmCodeRequestModel) _then;

/// Create a copy of ConfirmCodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? verifyToken = null,Object? accessToken = freezed,}) {
  return _then(_ConfirmCodeRequestModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,verifyToken: null == verifyToken ? _self.verifyToken : verifyToken // ignore: cast_nullable_to_non_nullable
as String,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
