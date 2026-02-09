// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUserProfile {
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

  /// Create a copy of GetUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserProfileCopyWith<GetUserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserProfileCopyWith<$Res> {
  factory $GetUserProfileCopyWith(
          GetUserProfile value, $Res Function(GetUserProfile) then) =
      _$GetUserProfileCopyWithImpl<$Res, GetUserProfile>;
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
class _$GetUserProfileCopyWithImpl<$Res, $Val extends GetUserProfile>
    implements $GetUserProfileCopyWith<$Res> {
  _$GetUserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserProfile
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
abstract class _$$GetUserProfileImplCopyWith<$Res>
    implements $GetUserProfileCopyWith<$Res> {
  factory _$$GetUserProfileImplCopyWith(_$GetUserProfileImpl value,
          $Res Function(_$GetUserProfileImpl) then) =
      __$$GetUserProfileImplCopyWithImpl<$Res>;
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
class __$$GetUserProfileImplCopyWithImpl<$Res>
    extends _$GetUserProfileCopyWithImpl<$Res, _$GetUserProfileImpl>
    implements _$$GetUserProfileImplCopyWith<$Res> {
  __$$GetUserProfileImplCopyWithImpl(
      _$GetUserProfileImpl _value, $Res Function(_$GetUserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserProfile
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
    return _then(_$GetUserProfileImpl(
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

class _$GetUserProfileImpl implements _GetUserProfile {
  const _$GetUserProfileImpl(
      {@JsonKey(name: DatabaseConstants.id) required this.userId,
      @JsonKey(name: DatabaseConstants.firstName) required this.firstName,
      @JsonKey(name: DatabaseConstants.lastName) required this.lastName,
      @JsonKey(name: DatabaseConstants.phone) required this.phone,
      @JsonKey(name: DatabaseConstants.email) required this.email,
      @JsonKey(name: DatabaseConstants.rating) required this.rating});

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
    return 'GetUserProfile(userId: $userId, firstName: $firstName, lastName: $lastName, phone: $phone, email: $email, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, firstName, lastName, phone, email, rating);

  /// Create a copy of GetUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserProfileImplCopyWith<_$GetUserProfileImpl> get copyWith =>
      __$$GetUserProfileImplCopyWithImpl<_$GetUserProfileImpl>(
          this, _$identity);
}

abstract class _GetUserProfile implements GetUserProfile {
  const factory _GetUserProfile(
      {@JsonKey(name: DatabaseConstants.id) required final String userId,
      @JsonKey(name: DatabaseConstants.firstName)
      required final String firstName,
      @JsonKey(name: DatabaseConstants.lastName) required final String lastName,
      @JsonKey(name: DatabaseConstants.phone) required final String phone,
      @JsonKey(name: DatabaseConstants.email) required final String email,
      @JsonKey(name: DatabaseConstants.rating)
      required final double rating}) = _$GetUserProfileImpl;

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

  /// Create a copy of GetUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserProfileImplCopyWith<_$GetUserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
