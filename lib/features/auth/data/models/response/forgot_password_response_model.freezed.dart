// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordResponseModel {

 bool get code; String get message; String get resetToken;
/// Create a copy of ForgotPasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordResponseModelCopyWith<ForgotPasswordResponseModel> get copyWith => _$ForgotPasswordResponseModelCopyWithImpl<ForgotPasswordResponseModel>(this as ForgotPasswordResponseModel, _$identity);

  /// Serializes this ForgotPasswordResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordResponseModel&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.resetToken, resetToken) || other.resetToken == resetToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,resetToken);

@override
String toString() {
  return 'ForgotPasswordResponseModel(code: $code, message: $message, resetToken: $resetToken)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordResponseModelCopyWith<$Res>  {
  factory $ForgotPasswordResponseModelCopyWith(ForgotPasswordResponseModel value, $Res Function(ForgotPasswordResponseModel) _then) = _$ForgotPasswordResponseModelCopyWithImpl;
@useResult
$Res call({
 bool code, String message, String resetToken
});




}
/// @nodoc
class _$ForgotPasswordResponseModelCopyWithImpl<$Res>
    implements $ForgotPasswordResponseModelCopyWith<$Res> {
  _$ForgotPasswordResponseModelCopyWithImpl(this._self, this._then);

  final ForgotPasswordResponseModel _self;
  final $Res Function(ForgotPasswordResponseModel) _then;

/// Create a copy of ForgotPasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,Object? resetToken = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,resetToken: null == resetToken ? _self.resetToken : resetToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPasswordResponseModel].
extension ForgotPasswordResponseModelPatterns on ForgotPasswordResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPasswordResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPasswordResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPasswordResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool code,  String message,  String resetToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordResponseModel() when $default != null:
return $default(_that.code,_that.message,_that.resetToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool code,  String message,  String resetToken)  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordResponseModel():
return $default(_that.code,_that.message,_that.resetToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool code,  String message,  String resetToken)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordResponseModel() when $default != null:
return $default(_that.code,_that.message,_that.resetToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgotPasswordResponseModel implements ForgotPasswordResponseModel {
  const _ForgotPasswordResponseModel({required this.code, required this.message, required this.resetToken});
  factory _ForgotPasswordResponseModel.fromJson(Map<String, dynamic> json) => _$ForgotPasswordResponseModelFromJson(json);

@override final  bool code;
@override final  String message;
@override final  String resetToken;

/// Create a copy of ForgotPasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordResponseModelCopyWith<_ForgotPasswordResponseModel> get copyWith => __$ForgotPasswordResponseModelCopyWithImpl<_ForgotPasswordResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgotPasswordResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordResponseModel&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.resetToken, resetToken) || other.resetToken == resetToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,resetToken);

@override
String toString() {
  return 'ForgotPasswordResponseModel(code: $code, message: $message, resetToken: $resetToken)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordResponseModelCopyWith<$Res> implements $ForgotPasswordResponseModelCopyWith<$Res> {
  factory _$ForgotPasswordResponseModelCopyWith(_ForgotPasswordResponseModel value, $Res Function(_ForgotPasswordResponseModel) _then) = __$ForgotPasswordResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool code, String message, String resetToken
});




}
/// @nodoc
class __$ForgotPasswordResponseModelCopyWithImpl<$Res>
    implements _$ForgotPasswordResponseModelCopyWith<$Res> {
  __$ForgotPasswordResponseModelCopyWithImpl(this._self, this._then);

  final _ForgotPasswordResponseModel _self;
  final $Res Function(_ForgotPasswordResponseModel) _then;

/// Create a copy of ForgotPasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? resetToken = null,}) {
  return _then(_ForgotPasswordResponseModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,resetToken: null == resetToken ? _self.resetToken : resetToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
