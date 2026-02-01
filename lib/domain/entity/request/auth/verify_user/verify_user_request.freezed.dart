// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyUserRequest {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Create a copy of VerifyUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyUserRequestCopyWith<VerifyUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyUserRequestCopyWith<$Res> {
  factory $VerifyUserRequestCopyWith(
          VerifyUserRequest value, $Res Function(VerifyUserRequest) then) =
      _$VerifyUserRequestCopyWithImpl<$Res, VerifyUserRequest>;
  @useResult
  $Res call({String phoneNumber, String token});
}

/// @nodoc
class _$VerifyUserRequestCopyWithImpl<$Res, $Val extends VerifyUserRequest>
    implements $VerifyUserRequestCopyWith<$Res> {
  _$VerifyUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyUserRequestImplCopyWith<$Res>
    implements $VerifyUserRequestCopyWith<$Res> {
  factory _$$VerifyUserRequestImplCopyWith(_$VerifyUserRequestImpl value,
          $Res Function(_$VerifyUserRequestImpl) then) =
      __$$VerifyUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String token});
}

/// @nodoc
class __$$VerifyUserRequestImplCopyWithImpl<$Res>
    extends _$VerifyUserRequestCopyWithImpl<$Res, _$VerifyUserRequestImpl>
    implements _$$VerifyUserRequestImplCopyWith<$Res> {
  __$$VerifyUserRequestImplCopyWithImpl(_$VerifyUserRequestImpl _value,
      $Res Function(_$VerifyUserRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? token = null,
  }) {
    return _then(_$VerifyUserRequestImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyUserRequestImpl implements _VerifyUserRequest {
  const _$VerifyUserRequestImpl(
      {required this.phoneNumber, required this.token});

  @override
  final String phoneNumber;
  @override
  final String token;

  @override
  String toString() {
    return 'VerifyUserRequest(phoneNumber: $phoneNumber, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyUserRequestImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, token);

  /// Create a copy of VerifyUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyUserRequestImplCopyWith<_$VerifyUserRequestImpl> get copyWith =>
      __$$VerifyUserRequestImplCopyWithImpl<_$VerifyUserRequestImpl>(
          this, _$identity);
}

abstract class _VerifyUserRequest implements VerifyUserRequest {
  const factory _VerifyUserRequest(
      {required final String phoneNumber,
      required final String token}) = _$VerifyUserRequestImpl;

  @override
  String get phoneNumber;
  @override
  String get token;

  /// Create a copy of VerifyUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyUserRequestImplCopyWith<_$VerifyUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
