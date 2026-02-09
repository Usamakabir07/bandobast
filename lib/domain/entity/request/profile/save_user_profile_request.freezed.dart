// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_user_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaveUserProfileRequest {
  @JsonKey(name: DatabaseConstants.userId)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.phone)
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.firstName)
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.lastName)
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.email)
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of SaveUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveUserProfileRequestCopyWith<SaveUserProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveUserProfileRequestCopyWith<$Res> {
  factory $SaveUserProfileRequestCopyWith(SaveUserProfileRequest value,
          $Res Function(SaveUserProfileRequest) then) =
      _$SaveUserProfileRequestCopyWithImpl<$Res, SaveUserProfileRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.userId) String userId,
      @JsonKey(name: DatabaseConstants.phone) String phone,
      @JsonKey(name: DatabaseConstants.firstName) String firstName,
      @JsonKey(name: DatabaseConstants.lastName) String lastName,
      @JsonKey(name: DatabaseConstants.email) String email});
}

/// @nodoc
class _$SaveUserProfileRequestCopyWithImpl<$Res,
        $Val extends SaveUserProfileRequest>
    implements $SaveUserProfileRequestCopyWith<$Res> {
  _$SaveUserProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? phone = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveUserProfileRequestImplCopyWith<$Res>
    implements $SaveUserProfileRequestCopyWith<$Res> {
  factory _$$SaveUserProfileRequestImplCopyWith(
          _$SaveUserProfileRequestImpl value,
          $Res Function(_$SaveUserProfileRequestImpl) then) =
      __$$SaveUserProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.userId) String userId,
      @JsonKey(name: DatabaseConstants.phone) String phone,
      @JsonKey(name: DatabaseConstants.firstName) String firstName,
      @JsonKey(name: DatabaseConstants.lastName) String lastName,
      @JsonKey(name: DatabaseConstants.email) String email});
}

/// @nodoc
class __$$SaveUserProfileRequestImplCopyWithImpl<$Res>
    extends _$SaveUserProfileRequestCopyWithImpl<$Res,
        _$SaveUserProfileRequestImpl>
    implements _$$SaveUserProfileRequestImplCopyWith<$Res> {
  __$$SaveUserProfileRequestImplCopyWithImpl(
      _$SaveUserProfileRequestImpl _value,
      $Res Function(_$SaveUserProfileRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? phone = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_$SaveUserProfileRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveUserProfileRequestImpl implements _SaveUserProfileRequest {
  const _$SaveUserProfileRequestImpl(
      {@JsonKey(name: DatabaseConstants.userId) required this.userId,
      @JsonKey(name: DatabaseConstants.phone) required this.phone,
      @JsonKey(name: DatabaseConstants.firstName) required this.firstName,
      @JsonKey(name: DatabaseConstants.lastName) required this.lastName,
      @JsonKey(name: DatabaseConstants.email) required this.email});

  @override
  @JsonKey(name: DatabaseConstants.userId)
  final String userId;
  @override
  @JsonKey(name: DatabaseConstants.phone)
  final String phone;
  @override
  @JsonKey(name: DatabaseConstants.firstName)
  final String firstName;
  @override
  @JsonKey(name: DatabaseConstants.lastName)
  final String lastName;
  @override
  @JsonKey(name: DatabaseConstants.email)
  final String email;

  @override
  String toString() {
    return 'SaveUserProfileRequest(userId: $userId, phone: $phone, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUserProfileRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, phone, firstName, lastName, email);

  /// Create a copy of SaveUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUserProfileRequestImplCopyWith<_$SaveUserProfileRequestImpl>
      get copyWith => __$$SaveUserProfileRequestImplCopyWithImpl<
          _$SaveUserProfileRequestImpl>(this, _$identity);
}

abstract class _SaveUserProfileRequest implements SaveUserProfileRequest {
  const factory _SaveUserProfileRequest(
      {@JsonKey(name: DatabaseConstants.userId) required final String userId,
      @JsonKey(name: DatabaseConstants.phone) required final String phone,
      @JsonKey(name: DatabaseConstants.firstName)
      required final String firstName,
      @JsonKey(name: DatabaseConstants.lastName) required final String lastName,
      @JsonKey(name: DatabaseConstants.email)
      required final String email}) = _$SaveUserProfileRequestImpl;

  @override
  @JsonKey(name: DatabaseConstants.userId)
  String get userId;
  @override
  @JsonKey(name: DatabaseConstants.phone)
  String get phone;
  @override
  @JsonKey(name: DatabaseConstants.firstName)
  String get firstName;
  @override
  @JsonKey(name: DatabaseConstants.lastName)
  String get lastName;
  @override
  @JsonKey(name: DatabaseConstants.email)
  String get email;

  /// Create a copy of SaveUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveUserProfileRequestImplCopyWith<_$SaveUserProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
