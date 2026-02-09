// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserProfileDto _$GetUserProfileDtoFromJson(Map<String, dynamic> json) {
  return _GetUserProfileDto.fromJson(json);
}

/// @nodoc
mixin _$GetUserProfileDto {
  @JsonKey(name: DatabaseConstants.id)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.firstName)
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.lastName)
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.phone)
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.email)
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.rating)
  double get rating => throw _privateConstructorUsedError;

  /// Serializes this GetUserProfileDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetUserProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserProfileDtoCopyWith<GetUserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserProfileDtoCopyWith<$Res> {
  factory $GetUserProfileDtoCopyWith(
          GetUserProfileDto value, $Res Function(GetUserProfileDto) then) =
      _$GetUserProfileDtoCopyWithImpl<$Res, GetUserProfileDto>;
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.id) String userId,
      @JsonKey(name: DatabaseConstants.firstName) String firstName,
      @JsonKey(name: DatabaseConstants.lastName) String lastName,
      @JsonKey(name: DatabaseConstants.phone) String phone,
      @JsonKey(name: DatabaseConstants.email) String email,
      @JsonKey(name: DatabaseConstants.rating) double rating});
}

/// @nodoc
class _$GetUserProfileDtoCopyWithImpl<$Res, $Val extends GetUserProfileDto>
    implements $GetUserProfileDtoCopyWith<$Res> {
  _$GetUserProfileDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? email = null,
    Object? rating = null,
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserProfileDtoImplCopyWith<$Res>
    implements $GetUserProfileDtoCopyWith<$Res> {
  factory _$$GetUserProfileDtoImplCopyWith(_$GetUserProfileDtoImpl value,
          $Res Function(_$GetUserProfileDtoImpl) then) =
      __$$GetUserProfileDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.id) String userId,
      @JsonKey(name: DatabaseConstants.firstName) String firstName,
      @JsonKey(name: DatabaseConstants.lastName) String lastName,
      @JsonKey(name: DatabaseConstants.phone) String phone,
      @JsonKey(name: DatabaseConstants.email) String email,
      @JsonKey(name: DatabaseConstants.rating) double rating});
}

/// @nodoc
class __$$GetUserProfileDtoImplCopyWithImpl<$Res>
    extends _$GetUserProfileDtoCopyWithImpl<$Res, _$GetUserProfileDtoImpl>
    implements _$$GetUserProfileDtoImplCopyWith<$Res> {
  __$$GetUserProfileDtoImplCopyWithImpl(_$GetUserProfileDtoImpl _value,
      $Res Function(_$GetUserProfileDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? email = null,
    Object? rating = null,
  }) {
    return _then(_$GetUserProfileDtoImpl(
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserProfileDtoImpl implements _GetUserProfileDto {
  const _$GetUserProfileDtoImpl(
      {@JsonKey(name: DatabaseConstants.id) required this.userId,
      @JsonKey(name: DatabaseConstants.firstName) required this.firstName,
      @JsonKey(name: DatabaseConstants.lastName) required this.lastName,
      @JsonKey(name: DatabaseConstants.phone) required this.phone,
      @JsonKey(name: DatabaseConstants.email) required this.email,
      @JsonKey(name: DatabaseConstants.rating) required this.rating});

  factory _$GetUserProfileDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserProfileDtoImplFromJson(json);

  @override
  @JsonKey(name: DatabaseConstants.id)
  final String userId;
  @override
  @JsonKey(name: DatabaseConstants.firstName)
  final String firstName;
  @override
  @JsonKey(name: DatabaseConstants.lastName)
  final String lastName;
  @override
  @JsonKey(name: DatabaseConstants.phone)
  final String phone;
  @override
  @JsonKey(name: DatabaseConstants.email)
  final String email;
  @override
  @JsonKey(name: DatabaseConstants.rating)
  final double rating;

  @override
  String toString() {
    return 'GetUserProfileDto(userId: $userId, firstName: $firstName, lastName: $lastName, phone: $phone, email: $email, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, firstName, lastName, phone, email, rating);

  /// Create a copy of GetUserProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserProfileDtoImplCopyWith<_$GetUserProfileDtoImpl> get copyWith =>
      __$$GetUserProfileDtoImplCopyWithImpl<_$GetUserProfileDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserProfileDtoImplToJson(
      this,
    );
  }
}

abstract class _GetUserProfileDto implements GetUserProfileDto {
  const factory _GetUserProfileDto(
      {@JsonKey(name: DatabaseConstants.id) required final String userId,
      @JsonKey(name: DatabaseConstants.firstName)
      required final String firstName,
      @JsonKey(name: DatabaseConstants.lastName) required final String lastName,
      @JsonKey(name: DatabaseConstants.phone) required final String phone,
      @JsonKey(name: DatabaseConstants.email) required final String email,
      @JsonKey(name: DatabaseConstants.rating)
      required final double rating}) = _$GetUserProfileDtoImpl;

  factory _GetUserProfileDto.fromJson(Map<String, dynamic> json) =
      _$GetUserProfileDtoImpl.fromJson;

  @override
  @JsonKey(name: DatabaseConstants.id)
  String get userId;
  @override
  @JsonKey(name: DatabaseConstants.firstName)
  String get firstName;
  @override
  @JsonKey(name: DatabaseConstants.lastName)
  String get lastName;
  @override
  @JsonKey(name: DatabaseConstants.phone)
  String get phone;
  @override
  @JsonKey(name: DatabaseConstants.email)
  String get email;
  @override
  @JsonKey(name: DatabaseConstants.rating)
  double get rating;

  /// Create a copy of GetUserProfileDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserProfileDtoImplCopyWith<_$GetUserProfileDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
