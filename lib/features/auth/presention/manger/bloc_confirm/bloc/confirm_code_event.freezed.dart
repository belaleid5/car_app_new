// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_code_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConfirmCodeEvent {

 String get code; String get verifyToken; String? get accessToken;
/// Create a copy of ConfirmCodeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmCodeEventCopyWith<ConfirmCodeEvent> get copyWith => _$ConfirmCodeEventCopyWithImpl<ConfirmCodeEvent>(this as ConfirmCodeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmCodeEvent&&(identical(other.code, code) || other.code == code)&&(identical(other.verifyToken, verifyToken) || other.verifyToken == verifyToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,code,verifyToken,accessToken);

@override
String toString() {
  return 'ConfirmCodeEvent(code: $code, verifyToken: $verifyToken, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $ConfirmCodeEventCopyWith<$Res>  {
  factory $ConfirmCodeEventCopyWith(ConfirmCodeEvent value, $Res Function(ConfirmCodeEvent) _then) = _$ConfirmCodeEventCopyWithImpl;
@useResult
$Res call({
 String code, String verifyToken, String? accessToken
});




}
/// @nodoc
class _$ConfirmCodeEventCopyWithImpl<$Res>
    implements $ConfirmCodeEventCopyWith<$Res> {
  _$ConfirmCodeEventCopyWithImpl(this._self, this._then);

  final ConfirmCodeEvent _self;
  final $Res Function(ConfirmCodeEvent) _then;

/// Create a copy of ConfirmCodeEvent
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


/// Adds pattern-matching-related methods to [ConfirmCodeEvent].
extension ConfirmCodeEventPatterns on ConfirmCodeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ConfirmCode value)?  confirmCode,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmCode() when confirmCode != null:
return confirmCode(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ConfirmCode value)  confirmCode,}){
final _that = this;
switch (_that) {
case _ConfirmCode():
return confirmCode(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ConfirmCode value)?  confirmCode,}){
final _that = this;
switch (_that) {
case _ConfirmCode() when confirmCode != null:
return confirmCode(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code,  String verifyToken,  String? accessToken)?  confirmCode,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmCode() when confirmCode != null:
return confirmCode(_that.code,_that.verifyToken,_that.accessToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code,  String verifyToken,  String? accessToken)  confirmCode,}) {final _that = this;
switch (_that) {
case _ConfirmCode():
return confirmCode(_that.code,_that.verifyToken,_that.accessToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code,  String verifyToken,  String? accessToken)?  confirmCode,}) {final _that = this;
switch (_that) {
case _ConfirmCode() when confirmCode != null:
return confirmCode(_that.code,_that.verifyToken,_that.accessToken);case _:
  return null;

}
}

}

/// @nodoc


class _ConfirmCode implements ConfirmCodeEvent {
  const _ConfirmCode({required this.code, required this.verifyToken, this.accessToken});
  

@override final  String code;
@override final  String verifyToken;
@override final  String? accessToken;

/// Create a copy of ConfirmCodeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmCodeCopyWith<_ConfirmCode> get copyWith => __$ConfirmCodeCopyWithImpl<_ConfirmCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmCode&&(identical(other.code, code) || other.code == code)&&(identical(other.verifyToken, verifyToken) || other.verifyToken == verifyToken)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,code,verifyToken,accessToken);

@override
String toString() {
  return 'ConfirmCodeEvent.confirmCode(code: $code, verifyToken: $verifyToken, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$ConfirmCodeCopyWith<$Res> implements $ConfirmCodeEventCopyWith<$Res> {
  factory _$ConfirmCodeCopyWith(_ConfirmCode value, $Res Function(_ConfirmCode) _then) = __$ConfirmCodeCopyWithImpl;
@override @useResult
$Res call({
 String code, String verifyToken, String? accessToken
});




}
/// @nodoc
class __$ConfirmCodeCopyWithImpl<$Res>
    implements _$ConfirmCodeCopyWith<$Res> {
  __$ConfirmCodeCopyWithImpl(this._self, this._then);

  final _ConfirmCode _self;
  final $Res Function(_ConfirmCode) _then;

/// Create a copy of ConfirmCodeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? verifyToken = null,Object? accessToken = freezed,}) {
  return _then(_ConfirmCode(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,verifyToken: null == verifyToken ? _self.verifyToken : verifyToken // ignore: cast_nullable_to_non_nullable
as String,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
