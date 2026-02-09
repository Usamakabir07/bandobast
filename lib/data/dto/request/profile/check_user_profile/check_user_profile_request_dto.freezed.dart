// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_user_profile_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckUserProfileRequestDto _$CheckUserProfileRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _CheckUserProfileRequestDto.fromJson(json);
}

/// @nodoc
mixin _$CheckUserProfileRequestDto {
  @JsonKey(name: DatabaseConstants.userId)
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this CheckUserProfileRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckUserProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckUserProfileRequestDtoCopyWith<CheckUserProfileRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckUserProfileRequestDtoCopyWith<$Res> {
  factory $CheckUserProfileRequestDtoCopyWith(CheckUserProfileRequestDto value,
          $Res Function(CheckUserProfileRequestDto) then) =
      _$CheckUserProfileRequestDtoCopyWithImpl<$Res,
          CheckUserProfileRequestDto>;
  @useResult
  $Res call({@JsonKey(name: DatabaseConstants.userId) String userId});
}

/// @nodoc
class _$CheckUserProfileRequestDtoCopyWithImpl<$Res,
        $Val extends CheckUserProfileRequestDto>
    implements $CheckUserProfileRequestDtoCopyWith<$Res> {
  _$CheckUserProfileRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckUserProfileRequestDto
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
abstract class _$$CheckUserProfileRequestDtoImplCopyWith<$Res>
    implements $CheckUserProfileRequestDtoCopyWith<$Res> {
  factory _$$CheckUserProfileRequestDtoImplCopyWith(
          _$CheckUserProfileRequestDtoImpl value,
          $Res Function(_$CheckUserProfileRequestDtoImpl) then) =
      __$$CheckUserProfileRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: DatabaseConstants.userId) String userId});
}

/// @nodoc
class __$$CheckUserProfileRequestDtoImplCopyWithImpl<$Res>
    extends _$CheckUserProfileRequestDtoCopyWithImpl<$Res,
        _$CheckUserProfileRequestDtoImpl>
    implements _$$CheckUserProfileRequestDtoImplCopyWith<$Res> {
  __$$CheckUserProfileRequestDtoImplCopyWithImpl(
      _$CheckUserProfileRequestDtoImpl _value,
      $Res Function(_$CheckUserProfileRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckUserProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$CheckUserProfileRequestDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckUserProfileRequestDtoImpl implements _CheckUserProfileRequestDto {
  const _$CheckUserProfileRequestDtoImpl(
      {@JsonKey(name: DatabaseConstants.userId) required this.userId});

  factory _$CheckUserProfileRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CheckUserProfileRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: DatabaseConstants.userId)
  final String userId;

  @override
  String toString() {
    return 'CheckUserProfileRequestDto(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUserProfileRequestDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of CheckUserProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUserProfileRequestDtoImplCopyWith<_$CheckUserProfileRequestDtoImpl>
      get copyWith => __$$CheckUserProfileRequestDtoImplCopyWithImpl<
          _$CheckUserProfileRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckUserProfileRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _CheckUserProfileRequestDto
    implements CheckUserProfileRequestDto {
  const factory _CheckUserProfileRequestDto(
      {@JsonKey(name: DatabaseConstants.userId)
      required final String userId}) = _$CheckUserProfileRequestDtoImpl;

  factory _CheckUserProfileRequestDto.fromJson(Map<String, dynamic> json) =
      _$CheckUserProfileRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: DatabaseConstants.userId)
  String get userId;

  /// Create a copy of CheckUserProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckUserProfileRequestDtoImplCopyWith<_$CheckUserProfileRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
