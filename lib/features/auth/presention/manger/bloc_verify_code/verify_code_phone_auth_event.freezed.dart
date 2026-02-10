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

 String get phoneNumber; String get accessToken;
/// Create a copy of VerifyCodePhoneAuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyCodePhoneAuthEventCopyWith<VerifyCodePhoneAuthEvent> get copyWith => _$VerifyCodePhoneAuthEventCopyWithImpl<VerifyCodePhoneAuthEvent>(this as VerifyCodePhoneAuthEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyCodePhoneAuthEvent&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,accessToken);

@override
String toString() {
  return 'VerifyCodePhoneAuthEvent(phoneNumber: $phoneNumber, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $VerifyCodePhoneAuthEventCopyWith<$Res>  {
  factory $VerifyCodePhoneAuthEventCopyWith(VerifyCodePhoneAuthEvent value, $Res Function(VerifyCodePhoneAuthEvent) _then) = _$VerifyCodePhoneAuthEventCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String accessToken
});




}
/// @nodoc
class _$VerifyCodePhoneAuthEventCopyWithImpl<$Res>
    implements $VerifyCodePhoneAuthEventCopyWith<$Res> {
  _$VerifyCodePhoneAuthEventCopyWithImpl(this._self, this._then);

  final VerifyCodePhoneAuthEvent _self;
  final $Res Function(VerifyCodePhoneAuthEvent) _then;

/// Create a copy of VerifyCodePhoneAuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? accessToken = null,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _VerifyPhone value)?  verifyPhone,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPhone() when verifyPhone != null:
return verifyPhone(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _VerifyPhone value)  verifyPhone,}){
final _that = this;
switch (_that) {
case _VerifyPhone():
return verifyPhone(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _VerifyPhone value)?  verifyPhone,}){
final _that = this;
switch (_that) {
case _VerifyPhone() when verifyPhone != null:
return verifyPhone(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phoneNumber,  String accessToken)?  verifyPhone,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPhone() when verifyPhone != null:
return verifyPhone(_that.phoneNumber,_that.accessToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phoneNumber,  String accessToken)  verifyPhone,}) {final _that = this;
switch (_that) {
case _VerifyPhone():
return verifyPhone(_that.phoneNumber,_that.accessToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phoneNumber,  String accessToken)?  verifyPhone,}) {final _that = this;
switch (_that) {
case _VerifyPhone() when verifyPhone != null:
return verifyPhone(_that.phoneNumber,_that.accessToken);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyPhone implements VerifyCodePhoneAuthEvent {
  const _VerifyPhone({required this.phoneNumber, required this.accessToken});
  

@override final  String phoneNumber;
@override final  String accessToken;

/// Create a copy of VerifyCodePhoneAuthEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
@override @useResult
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
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? accessToken = null,}) {
  return _then(_VerifyPhone(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
