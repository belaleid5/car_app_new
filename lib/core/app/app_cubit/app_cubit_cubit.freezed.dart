// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppCubitState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppCubitState()';
  }
}

/// @nodoc
class $AppCubitStateCopyWith<$Res> {
  $AppCubitStateCopyWith(AppState _, $Res Function(AppState) __);
}

/// Adds pattern-matching-related methods to [AppState].
extension AppCubitStatePatterns on AppState {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeChangeMode value)? themeChangeMode,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case ThemeChangeMode() when themeChangeMode != null:
        return themeChangeMode(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeChangeMode value) themeChangeMode,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case ThemeChangeMode():
        return themeChangeMode(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeChangeMode value)? themeChangeMode,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case ThemeChangeMode() when themeChangeMode != null:
        return themeChangeMode(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDarkMode)? themeChangeMode,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case ThemeChangeMode() when themeChangeMode != null:
        return themeChangeMode(_that.isDarkMode);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDarkMode) themeChangeMode,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case ThemeChangeMode():
        return themeChangeMode(_that.isDarkMode);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDarkMode)? themeChangeMode,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case ThemeChangeMode() when themeChangeMode != null:
        return themeChangeMode(_that.isDarkMode);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements AppState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppCubitState.initial()';
  }
}

/// @nodoc

class ThemeChangeMode implements AppState {
  const ThemeChangeMode({required this.isDarkMode});

  final bool isDarkMode;

  /// Create a copy of AppCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeChangeModeCopyWith<ThemeChangeMode> get copyWith =>
      _$ThemeChangeModeCopyWithImpl<ThemeChangeMode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeChangeMode &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @override
  String toString() {
    return 'AppCubitState.themeChangeMode(isDarkMode: $isDarkMode)';
  }
}

/// @nodoc
abstract mixin class $ThemeChangeModeCopyWith<$Res>
    implements $AppCubitStateCopyWith<$Res> {
  factory $ThemeChangeModeCopyWith(
          ThemeChangeMode value, $Res Function(ThemeChangeMode) _then) =
      _$ThemeChangeModeCopyWithImpl;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class _$ThemeChangeModeCopyWithImpl<$Res>
    implements $ThemeChangeModeCopyWith<$Res> {
  _$ThemeChangeModeCopyWithImpl(this._self, this._then);

  final ThemeChangeMode _self;
  final $Res Function(ThemeChangeMode) _then;

  /// Create a copy of AppCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(ThemeChangeMode(
      isDarkMode: null == isDarkMode
          ? _self.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
