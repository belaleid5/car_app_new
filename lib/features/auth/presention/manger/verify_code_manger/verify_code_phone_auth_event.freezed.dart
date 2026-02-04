// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_code_phone_auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyCodePhoneAuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyCodePhoneAuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyCodePhoneAuthEvent()';
}


}

/// @nodoc
class $VerifyCodePhoneAuthEventCopyWith<$Res>  {
$VerifyCodePhoneAuthEventCopyWith(VerifyCodePhoneAuthEvent _, $Res Function(VerifyCodePhoneAuthEvent) __);
}


/// Adds pattern-matching-related methods to [VerifyCodePhoneAuthEvent].
extension VerifyCodePhoneAuthEventPatterns on VerifyCodePhoneAuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _VerifyPhone value)?  verifyPhone,TResult Function( _ResendCode value)?  resendCode,TResult Function( _VerifyCode value)?  verifyCode,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPhone() when verifyPhone != null:
return verifyPhone(_that);case _ResendCode() when resendCode != null:
return resendCode(_that);case _VerifyCode() when verifyCode != null:
return verifyCode(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _VerifyPhone value)  verifyPhone,required TResult Function( _ResendCode value)  resendCode,required TResult Function( _VerifyCode value)  verifyCode,}){
final _that = this;
switch (_that) {
case _VerifyPhone():
return verifyPhone(_that);case _ResendCode():
return resendCode(_that);case _VerifyCode():
return verifyCode(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _VerifyPhone value)?  verifyPhone,TResult? Function( _ResendCode value)?  resendCode,TResult? Function( _VerifyCode value)?  verifyCode,}){
final _that = this;
switch (_that) {
case _VerifyPhone() when verifyPhone != null:
return verifyPhone(_that);case _ResendCode() when resendCode != null:
return resendCode(_that);case _VerifyCode() when verifyCode != null:
return verifyCode(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phoneNumber,  String accessToken)?  verifyPhone,TResult Function( String phoneNumber)?  resendCode,TResult Function( String verificationId,  String code)?  verifyCode,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPhone() when verifyPhone != null:
return verifyPhone(_that.phoneNumber,_that.accessToken);case _ResendCode() when resendCode != null:
return resendCode(_that.phoneNumber);case _VerifyCode() when verifyCode != null:
return verifyCode(_that.verificationId,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phoneNumber,  String accessToken)  verifyPhone,required TResult Function( String phoneNumber)  resendCode,required TResult Function( String verificationId,  String code)  verifyCode,}) {final _that = this;
switch (_that) {
case _VerifyPhone():
return verifyPhone(_that.phoneNumber,_that.accessToken);case _ResendCode():
return resendCode(_that.phoneNumber);case _VerifyCode():
return verifyCode(_that.verificationId,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phoneNumber,  String accessToken)?  verifyPhone,TResult? Function( String phoneNumber)?  resendCode,TResult? Function( String verificationId,  String code)?  verifyCode,}) {final _that = this;
switch (_that) {
case _VerifyPhone() when verifyPhone != null:
return verifyPhone(_that.phoneNumber,_that.accessToken);case _ResendCode() when resendCode != null:
return resendCode(_that.phoneNumber);case _VerifyCode() when verifyCode != null:
return verifyCode(_that.verificationId,_that.code);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyPhone extends VerifyCodePhoneAuthEvent {
  const _VerifyPhone({required this.phoneNumber, required this.accessToken}): super._();
  

 final  String phoneNumber;
 final  String accessToken;

/// Create a copy of VerifyCodePhoneAuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPhoneCopyWith<_VerifyPhone> get copyWith => __$VerifyPhoneCopyWithImpl<_VerifyPhone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPhone&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,accessToken);

@override
String toString() {
  return 'VerifyCodePhoneAuthEvent.verifyPhone(phoneNumber: $phoneNumber, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$VerifyPhoneCopyWith<$Res> implements $VerifyCodePhoneAuthEventCopyWith<$Res> {
  factory _$VerifyPhoneCopyWith(_VerifyPhone value, $Res Function(_VerifyPhone) _then) = __$VerifyPhoneCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String accessToken
});




}
/// @nodoc
class __$VerifyPhoneCopyWithImpl<$Res>
    implements _$VerifyPhoneCopyWith<$Res> {
  __$VerifyPhoneCopyWithImpl(this._self, this._then);

  final _VerifyPhone _self;
  final $Res Function(_VerifyPhone) _then;

/// Create a copy of VerifyCodePhoneAuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? accessToken = null,}) {
  return _then(_VerifyPhone(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ResendCode extends VerifyCodePhoneAuthEvent {
  const _ResendCode({required this.phoneNumber}): super._();
  

 final  String phoneNumber;

/// Create a copy of VerifyCodePhoneAuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResendCodeCopyWith<_ResendCode> get copyWith => __$ResendCodeCopyWithImpl<_ResendCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendCode&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'VerifyCodePhoneAuthEvent.resendCode(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$ResendCodeCopyWith<$Res> implements $VerifyCodePhoneAuthEventCopyWith<$Res> {
  factory _$ResendCodeCopyWith(_ResendCode value, $Res Function(_ResendCode) _then) = __$ResendCodeCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class __$ResendCodeCopyWithImpl<$Res>
    implements _$ResendCodeCopyWith<$Res> {
  __$ResendCodeCopyWithImpl(this._self, this._then);

  final _ResendCode _self;
  final $Res Function(_ResendCode) _then;

/// Create a copy of VerifyCodePhoneAuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(_ResendCode(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _VerifyCode extends VerifyCodePhoneAuthEvent {
  const _VerifyCode({required this.verificationId, required this.code}): super._();
  

 final  String verificationId;
 final  String code;

/// Create a copy of VerifyCodePhoneAuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyCodeCopyWith<_VerifyCode> get copyWith => __$VerifyCodeCopyWithImpl<_VerifyCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyCode&&(identical(other.verificationId, verificationId) || other.verificationId == verificationId)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,verificationId,code);

@override
String toString() {
  return 'VerifyCodePhoneAuthEvent.verifyCode(verificationId: $verificationId, code: $code)';
}


}

/// @nodoc
abstract mixin class _$VerifyCodeCopyWith<$Res> implements $VerifyCodePhoneAuthEventCopyWith<$Res> {
  factory _$VerifyCodeCopyWith(_VerifyCode value, $Res Function(_VerifyCode) _then) = __$VerifyCodeCopyWithImpl;
@useResult
$Res call({
 String verificationId, String code
});




}
/// @nodoc
class __$VerifyCodeCopyWithImpl<$Res>
    implements _$VerifyCodeCopyWith<$Res> {
  __$VerifyCodeCopyWithImpl(this._self, this._then);

  final _VerifyCode _self;
  final $Res Function(_VerifyCode) _then;

/// Create a copy of VerifyCodePhoneAuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? verificationId = null,Object? code = null,}) {
  return _then(_VerifyCode(
verificationId: null == verificationId ? _self.verificationId : verificationId // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
