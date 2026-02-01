// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterUserRequest {
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Create a copy of RegisterUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterUserRequestCopyWith<RegisterUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserRequestCopyWith<$Res> {
  factory $RegisterUserRequestCopyWith(
          RegisterUserRequest value, $Res Function(RegisterUserRequest) then) =
      _$RegisterUserRequestCopyWithImpl<$Res, RegisterUserRequest>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$RegisterUserRequestCopyWithImpl<$Res, $Val extends RegisterUserRequest>
    implements $RegisterUserRequestCopyWith<$Res> {
  _$RegisterUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUserRequestImplCopyWith<$Res>
    implements $RegisterUserRequestCopyWith<$Res> {
  factory _$$RegisterUserRequestImplCopyWith(_$RegisterUserRequestImpl value,
          $Res Function(_$RegisterUserRequestImpl) then) =
      __$$RegisterUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$RegisterUserRequestImplCopyWithImpl<$Res>
    extends _$RegisterUserRequestCopyWithImpl<$Res, _$RegisterUserRequestImpl>
    implements _$$RegisterUserRequestImplCopyWith<$Res> {
  __$$RegisterUserRequestImplCopyWithImpl(_$RegisterUserRequestImpl _value,
      $Res Function(_$RegisterUserRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$RegisterUserRequestImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterUserRequestImpl implements _RegisterUserRequest {
  const _$RegisterUserRequestImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterUserRequest(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserRequestImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of RegisterUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserRequestImplCopyWith<_$RegisterUserRequestImpl> get copyWith =>
      __$$RegisterUserRequestImplCopyWithImpl<_$RegisterUserRequestImpl>(
          this, _$identity);
}

abstract class _RegisterUserRequest implements RegisterUserRequest {
  const factory _RegisterUserRequest({required final String phoneNumber}) =
      _$RegisterUserRequestImpl;

  @override
  String get phoneNumber;

  /// Create a copy of RegisterUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserRequestImplCopyWith<_$RegisterUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
