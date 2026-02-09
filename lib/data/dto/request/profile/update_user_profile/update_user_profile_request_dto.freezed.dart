// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserProfileRequestDto _$UpdateUserProfileRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserProfileRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserProfileRequestDto {
  @JsonKey(name: DatabaseConstants.userId)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.firstName)
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.lastName)
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.bio)
  String get bio => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.address)
  String get address => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserProfileRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserProfileRequestDtoCopyWith<UpdateUserProfileRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserProfileRequestDtoCopyWith<$Res> {
  factory $UpdateUserProfileRequestDtoCopyWith(
          UpdateUserProfileRequestDto value,
          $Res Function(UpdateUserProfileRequestDto) then) =
      _$UpdateUserProfileRequestDtoCopyWithImpl<$Res,
          UpdateUserProfileRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.userId) String userId,
      @JsonKey(name: DatabaseConstants.firstName) String firstName,
      @JsonKey(name: DatabaseConstants.lastName) String lastName,
      @JsonKey(name: DatabaseConstants.bio) String bio,
      @JsonKey(name: DatabaseConstants.address) String address});
}

/// @nodoc
class _$UpdateUserProfileRequestDtoCopyWithImpl<$Res,
        $Val extends UpdateUserProfileRequestDto>
    implements $UpdateUserProfileRequestDtoCopyWith<$Res> {
  _$UpdateUserProfileRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? bio = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserProfileRequestDtoImplCopyWith<$Res>
    implements $UpdateUserProfileRequestDtoCopyWith<$Res> {
  factory _$$UpdateUserProfileRequestDtoImplCopyWith(
          _$UpdateUserProfileRequestDtoImpl value,
          $Res Function(_$UpdateUserProfileRequestDtoImpl) then) =
      __$$UpdateUserProfileRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.userId) String userId,
      @JsonKey(name: DatabaseConstants.firstName) String firstName,
      @JsonKey(name: DatabaseConstants.lastName) String lastName,
      @JsonKey(name: DatabaseConstants.bio) String bio,
      @JsonKey(name: DatabaseConstants.address) String address});
}

/// @nodoc
class __$$UpdateUserProfileRequestDtoImplCopyWithImpl<$Res>
    extends _$UpdateUserProfileRequestDtoCopyWithImpl<$Res,
        _$UpdateUserProfileRequestDtoImpl>
    implements _$$UpdateUserProfileRequestDtoImplCopyWith<$Res> {
  __$$UpdateUserProfileRequestDtoImplCopyWithImpl(
      _$UpdateUserProfileRequestDtoImpl _value,
      $Res Function(_$UpdateUserProfileRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? bio = null,
    Object? address = null,
  }) {
    return _then(_$UpdateUserProfileRequestDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserProfileRequestDtoImpl
    implements _UpdateUserProfileRequestDto {
  const _$UpdateUserProfileRequestDtoImpl(
      {@JsonKey(name: DatabaseConstants.userId) required this.userId,
      @JsonKey(name: DatabaseConstants.firstName) required this.firstName,
      @JsonKey(name: DatabaseConstants.lastName) required this.lastName,
      @JsonKey(name: DatabaseConstants.bio) required this.bio,
      @JsonKey(name: DatabaseConstants.address) required this.address});

  factory _$UpdateUserProfileRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateUserProfileRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: DatabaseConstants.userId)
  final String userId;
  @override
  @JsonKey(name: DatabaseConstants.firstName)
  final String firstName;
  @override
  @JsonKey(name: DatabaseConstants.lastName)
  final String lastName;
  @override
  @JsonKey(name: DatabaseConstants.bio)
  final String bio;
  @override
  @JsonKey(name: DatabaseConstants.address)
  final String address;

  @override
  String toString() {
    return 'UpdateUserProfileRequestDto(userId: $userId, firstName: $firstName, lastName: $lastName, bio: $bio, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileRequestDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, firstName, lastName, bio, address);

  /// Create a copy of UpdateUserProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileRequestDtoImplCopyWith<_$UpdateUserProfileRequestDtoImpl>
      get copyWith => __$$UpdateUserProfileRequestDtoImplCopyWithImpl<
          _$UpdateUserProfileRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserProfileRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserProfileRequestDto
    implements UpdateUserProfileRequestDto {
  const factory _UpdateUserProfileRequestDto(
      {@JsonKey(name: DatabaseConstants.userId) required final String userId,
      @JsonKey(name: DatabaseConstants.firstName)
      required final String firstName,
      @JsonKey(name: DatabaseConstants.lastName) required final String lastName,
      @JsonKey(name: DatabaseConstants.bio) required final String bio,
      @JsonKey(name: DatabaseConstants.address)
      required final String address}) = _$UpdateUserProfileRequestDtoImpl;

  factory _UpdateUserProfileRequestDto.fromJson(Map<String, dynamic> json) =
      _$UpdateUserProfileRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: DatabaseConstants.userId)
  String get userId;
  @override
  @JsonKey(name: DatabaseConstants.firstName)
  String get firstName;
  @override
  @JsonKey(name: DatabaseConstants.lastName)
  String get lastName;
  @override
  @JsonKey(name: DatabaseConstants.bio)
  String get bio;
  @override
  @JsonKey(name: DatabaseConstants.address)
  String get address;

  /// Create a copy of UpdateUserProfileRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserProfileRequestDtoImplCopyWith<_$UpdateUserProfileRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
