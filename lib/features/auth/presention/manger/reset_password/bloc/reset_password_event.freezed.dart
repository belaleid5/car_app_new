// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPasswordEvent {

 ResetPasswordRequestModel get resetPassword;
/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEventCopyWith<ResetPasswordEvent> get copyWith => _$ResetPasswordEventCopyWithImpl<ResetPasswordEvent>(this as ResetPasswordEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEvent&&(identical(other.resetPassword, resetPassword) || other.resetPassword == resetPassword));
}


@override
int get hashCode => Object.hash(runtimeType,resetPassword);

@override
String toString() {
  return 'ResetPasswordEvent(resetPassword: $resetPassword)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEventCopyWith<$Res>  {
  factory $ResetPasswordEventCopyWith(ResetPasswordEvent value, $Res Function(ResetPasswordEvent) _then) = _$ResetPasswordEventCopyWithImpl;
@useResult
$Res call({
 ResetPasswordRequestModel resetPassword
});


$ResetPasswordRequestModelCopyWith<$Res> get resetPassword;

}
/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._self, this._then);

  final ResetPasswordEvent _self;
  final $Res Function(ResetPasswordEvent) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resetPassword = null,}) {
  return _then(_self.copyWith(
resetPassword: null == resetPassword ? _self.resetPassword : resetPassword // ignore: cast_nullable_to_non_nullable
as ResetPasswordRequestModel,
  ));
}
/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResetPasswordRequestModelCopyWith<$Res> get resetPassword {
  
  return $ResetPasswordRequestModelCopyWith<$Res>(_self.resetPassword, (value) {
    return _then(_self.copyWith(resetPassword: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResetPasswordEvent].
extension ResetPasswordEventPatterns on ResetPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ResetPasswordRequested value)?  resetPasswordRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ResetPasswordRequested value)  resetPasswordRequested,}){
final _that = this;
switch (_that) {
case _ResetPasswordRequested():
return resetPasswordRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ResetPasswordRequested value)?  resetPasswordRequested,}){
final _that = this;
switch (_that) {
case _ResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ResetPasswordRequestModel resetPassword)?  resetPasswordRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that.resetPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ResetPasswordRequestModel resetPassword)  resetPasswordRequested,}) {final _that = this;
switch (_that) {
case _ResetPasswordRequested():
return resetPasswordRequested(_that.resetPassword);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ResetPasswordRequestModel resetPassword)?  resetPasswordRequested,}) {final _that = this;
switch (_that) {
case _ResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that.resetPassword);case _:
  return null;

}
}

}

/// @nodoc


class _ResetPasswordRequested implements ResetPasswordEvent {
  const _ResetPasswordRequested({required this.resetPassword});
  

@override final  ResetPasswordRequestModel resetPassword;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordRequestedCopyWith<_ResetPasswordRequested> get copyWith => __$ResetPasswordRequestedCopyWithImpl<_ResetPasswordRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordRequested&&(identical(other.resetPassword, resetPassword) || other.resetPassword == resetPassword));
}


@override
int get hashCode => Object.hash(runtimeType,resetPassword);

@override
String toString() {
  return 'ResetPasswordEvent.resetPasswordRequested(resetPassword: $resetPassword)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordRequestedCopyWith<$Res> implements $ResetPasswordEventCopyWith<$Res> {
  factory _$ResetPasswordRequestedCopyWith(_ResetPasswordRequested value, $Res Function(_ResetPasswordRequested) _then) = __$ResetPasswordRequestedCopyWithImpl;
@override @useResult
$Res call({
 ResetPasswordRequestModel resetPassword
});


@override $ResetPasswordRequestModelCopyWith<$Res> get resetPassword;

}
/// @nodoc
class __$ResetPasswordRequestedCopyWithImpl<$Res>
    implements _$ResetPasswordRequestedCopyWith<$Res> {
  __$ResetPasswordRequestedCopyWithImpl(this._self, this._then);

  final _ResetPasswordRequested _self;
  final $Res Function(_ResetPasswordRequested) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resetPassword = null,}) {
  return _then(_ResetPasswordRequested(
resetPassword: null == resetPassword ? _self.resetPassword : resetPassword // ignore: cast_nullable_to_non_nullable
as ResetPasswordRequestModel,
  ));
}

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResetPasswordRequestModelCopyWith<$Res> get resetPassword {
  
  return $ResetPasswordRequestModelCopyWith<$Res>(_self.resetPassword, (value) {
    return _then(_self.copyWith(resetPassword: value));
  });
}
}

// dart format on
