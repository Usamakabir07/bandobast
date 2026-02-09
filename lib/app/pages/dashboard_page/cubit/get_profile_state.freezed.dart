// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GetUserProfile userProfile) success,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GetUserProfile userProfile)? success,
    TResult? Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GetUserProfile userProfile)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateLoading value) loading,
    required TResult Function(_GetProfileStateSuccess value) success,
    required TResult Function(_GetProfileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateLoading value)? loading,
    TResult? Function(_GetProfileStateSuccess value)? success,
    TResult? Function(_GetProfileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateLoading value)? loading,
    TResult Function(_GetProfileStateSuccess value)? success,
    TResult Function(_GetProfileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileStateCopyWith<$Res> {
  factory $GetProfileStateCopyWith(
          GetProfileState value, $Res Function(GetProfileState) then) =
      _$GetProfileStateCopyWithImpl<$Res, GetProfileState>;
}

/// @nodoc
class _$GetProfileStateCopyWithImpl<$Res, $Val extends GetProfileState>
    implements $GetProfileStateCopyWith<$Res> {
  _$GetProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetProfileStateLoadingImplCopyWith<$Res> {
  factory _$$GetProfileStateLoadingImplCopyWith(
          _$GetProfileStateLoadingImpl value,
          $Res Function(_$GetProfileStateLoadingImpl) then) =
      __$$GetProfileStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileStateLoadingImplCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res, _$GetProfileStateLoadingImpl>
    implements _$$GetProfileStateLoadingImplCopyWith<$Res> {
  __$$GetProfileStateLoadingImplCopyWithImpl(
      _$GetProfileStateLoadingImpl _value,
      $Res Function(_$GetProfileStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProfileStateLoadingImpl implements _GetProfileStateLoading {
  const _$GetProfileStateLoadingImpl();

  @override
  String toString() {
    return 'GetProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GetUserProfile userProfile) success,
    required TResult Function(Failure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GetUserProfile userProfile)? success,
    TResult? Function(Failure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GetUserProfile userProfile)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateLoading value) loading,
    required TResult Function(_GetProfileStateSuccess value) success,
    required TResult Function(_GetProfileStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateLoading value)? loading,
    TResult? Function(_GetProfileStateSuccess value)? success,
    TResult? Function(_GetProfileStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateLoading value)? loading,
    TResult Function(_GetProfileStateSuccess value)? success,
    TResult Function(_GetProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateLoading implements GetProfileState {
  const factory _GetProfileStateLoading() = _$GetProfileStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetProfileStateSuccessImplCopyWith<$Res> {
  factory _$$GetProfileStateSuccessImplCopyWith(
          _$GetProfileStateSuccessImpl value,
          $Res Function(_$GetProfileStateSuccessImpl) then) =
      __$$GetProfileStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetUserProfile userProfile});

  $GetUserProfileCopyWith<$Res> get userProfile;
}

/// @nodoc
class __$$GetProfileStateSuccessImplCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res, _$GetProfileStateSuccessImpl>
    implements _$$GetProfileStateSuccessImplCopyWith<$Res> {
  __$$GetProfileStateSuccessImplCopyWithImpl(
      _$GetProfileStateSuccessImpl _value,
      $Res Function(_$GetProfileStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
  }) {
    return _then(_$GetProfileStateSuccessImpl(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as GetUserProfile,
    ));
  }

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetUserProfileCopyWith<$Res> get userProfile {
    return $GetUserProfileCopyWith<$Res>(_value.userProfile, (value) {
      return _then(_value.copyWith(userProfile: value));
    });
  }
}

/// @nodoc

class _$GetProfileStateSuccessImpl implements _GetProfileStateSuccess {
  const _$GetProfileStateSuccessImpl({required this.userProfile});

  @override
  final GetUserProfile userProfile;

  @override
  String toString() {
    return 'GetProfileState.success(userProfile: $userProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateSuccessImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileStateSuccessImplCopyWith<_$GetProfileStateSuccessImpl>
      get copyWith => __$$GetProfileStateSuccessImplCopyWithImpl<
          _$GetProfileStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GetUserProfile userProfile) success,
    required TResult Function(Failure error) error,
  }) {
    return success(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GetUserProfile userProfile)? success,
    TResult? Function(Failure error)? error,
  }) {
    return success?.call(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GetUserProfile userProfile)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateLoading value) loading,
    required TResult Function(_GetProfileStateSuccess value) success,
    required TResult Function(_GetProfileStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateLoading value)? loading,
    TResult? Function(_GetProfileStateSuccess value)? success,
    TResult? Function(_GetProfileStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateLoading value)? loading,
    TResult Function(_GetProfileStateSuccess value)? success,
    TResult Function(_GetProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateSuccess implements GetProfileState {
  const factory _GetProfileStateSuccess(
          {required final GetUserProfile userProfile}) =
      _$GetProfileStateSuccessImpl;

  GetUserProfile get userProfile;

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileStateSuccessImplCopyWith<_$GetProfileStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileStateErrorImplCopyWith<$Res> {
  factory _$$GetProfileStateErrorImplCopyWith(_$GetProfileStateErrorImpl value,
          $Res Function(_$GetProfileStateErrorImpl) then) =
      __$$GetProfileStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$GetProfileStateErrorImplCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res, _$GetProfileStateErrorImpl>
    implements _$$GetProfileStateErrorImplCopyWith<$Res> {
  __$$GetProfileStateErrorImplCopyWithImpl(_$GetProfileStateErrorImpl _value,
      $Res Function(_$GetProfileStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetProfileStateErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$GetProfileStateErrorImpl implements _GetProfileStateError {
  const _$GetProfileStateErrorImpl(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'GetProfileState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileStateErrorImplCopyWith<_$GetProfileStateErrorImpl>
      get copyWith =>
          __$$GetProfileStateErrorImplCopyWithImpl<_$GetProfileStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GetUserProfile userProfile) success,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GetUserProfile userProfile)? success,
    TResult? Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GetUserProfile userProfile)? success,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateLoading value) loading,
    required TResult Function(_GetProfileStateSuccess value) success,
    required TResult Function(_GetProfileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateLoading value)? loading,
    TResult? Function(_GetProfileStateSuccess value)? success,
    TResult? Function(_GetProfileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateLoading value)? loading,
    TResult Function(_GetProfileStateSuccess value)? success,
    TResult Function(_GetProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateError implements GetProfileState {
  const factory _GetProfileStateError(final Failure error) =
      _$GetProfileStateErrorImpl;

  Failure get error;

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileStateErrorImplCopyWith<_$GetProfileStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
