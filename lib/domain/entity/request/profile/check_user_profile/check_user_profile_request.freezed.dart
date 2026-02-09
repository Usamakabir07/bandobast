// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_user_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckUserProfileRequest {
  @JsonKey(name: DatabaseConstants.userId)
  String get userId => throw _privateConstructorUsedError;

  /// Create a copy of CheckUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckUserProfileRequestCopyWith<CheckUserProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckUserProfileRequestCopyWith<$Res> {
  factory $CheckUserProfileRequestCopyWith(CheckUserProfileRequest value,
          $Res Function(CheckUserProfileRequest) then) =
      _$CheckUserProfileRequestCopyWithImpl<$Res, CheckUserProfileRequest>;
  @useResult
  $Res call({@JsonKey(name: DatabaseConstants.userId) String userId});
}

/// @nodoc
class _$CheckUserProfileRequestCopyWithImpl<$Res,
        $Val extends CheckUserProfileRequest>
    implements $CheckUserProfileRequestCopyWith<$Res> {
  _$CheckUserProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckUserProfileRequestImplCopyWith<$Res>
    implements $CheckUserProfileRequestCopyWith<$Res> {
  factory _$$CheckUserProfileRequestImplCopyWith(
          _$CheckUserProfileRequestImpl value,
          $Res Function(_$CheckUserProfileRequestImpl) then) =
      __$$CheckUserProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: DatabaseConstants.userId) String userId});
}

/// @nodoc
class __$$CheckUserProfileRequestImplCopyWithImpl<$Res>
    extends _$CheckUserProfileRequestCopyWithImpl<$Res,
        _$CheckUserProfileRequestImpl>
    implements _$$CheckUserProfileRequestImplCopyWith<$Res> {
  __$$CheckUserProfileRequestImplCopyWithImpl(
      _$CheckUserProfileRequestImpl _value,
      $Res Function(_$CheckUserProfileRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$CheckUserProfileRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckUserProfileRequestImpl implements _CheckUserProfileRequest {
  const _$CheckUserProfileRequestImpl(
      {@JsonKey(name: DatabaseConstants.userId) required this.userId});

  @override
  @JsonKey(name: DatabaseConstants.userId)
  final String userId;

  @override
  String toString() {
    return 'CheckUserProfileRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUserProfileRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of CheckUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUserProfileRequestImplCopyWith<_$CheckUserProfileRequestImpl>
      get copyWith => __$$CheckUserProfileRequestImplCopyWithImpl<
          _$CheckUserProfileRequestImpl>(this, _$identity);
}

abstract class _CheckUserProfileRequest implements CheckUserProfileRequest {
  const factory _CheckUserProfileRequest(
      {@JsonKey(name: DatabaseConstants.userId)
      required final String userId}) = _$CheckUserProfileRequestImpl;

  @override
  @JsonKey(name: DatabaseConstants.userId)
  String get userId;

  /// Create a copy of CheckUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckUserProfileRequestImplCopyWith<_$CheckUserProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
