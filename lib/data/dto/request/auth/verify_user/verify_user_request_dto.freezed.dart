// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_user_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyUserRequestDto _$VerifyUserRequestDtoFromJson(Map<String, dynamic> json) {
  return _VerifyUserRequestDto.fromJson(json);
}

/// @nodoc
mixin _$VerifyUserRequestDto {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this VerifyUserRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyUserRequestDtoCopyWith<VerifyUserRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyUserRequestDtoCopyWith<$Res> {
  factory $VerifyUserRequestDtoCopyWith(VerifyUserRequestDto value,
          $Res Function(VerifyUserRequestDto) then) =
      _$VerifyUserRequestDtoCopyWithImpl<$Res, VerifyUserRequestDto>;
  @useResult
  $Res call({String phoneNumber, String token});
}

/// @nodoc
class _$VerifyUserRequestDtoCopyWithImpl<$Res,
        $Val extends VerifyUserRequestDto>
    implements $VerifyUserRequestDtoCopyWith<$Res> {
  _$VerifyUserRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyUserRequestDto
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
abstract class _$$VerifyUserRequestDtoImplCopyWith<$Res>
    implements $VerifyUserRequestDtoCopyWith<$Res> {
  factory _$$VerifyUserRequestDtoImplCopyWith(_$VerifyUserRequestDtoImpl value,
          $Res Function(_$VerifyUserRequestDtoImpl) then) =
      __$$VerifyUserRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String token});
}

/// @nodoc
class __$$VerifyUserRequestDtoImplCopyWithImpl<$Res>
    extends _$VerifyUserRequestDtoCopyWithImpl<$Res, _$VerifyUserRequestDtoImpl>
    implements _$$VerifyUserRequestDtoImplCopyWith<$Res> {
  __$$VerifyUserRequestDtoImplCopyWithImpl(_$VerifyUserRequestDtoImpl _value,
      $Res Function(_$VerifyUserRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? token = null,
  }) {
    return _then(_$VerifyUserRequestDtoImpl(
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
@JsonSerializable()
class _$VerifyUserRequestDtoImpl implements _VerifyUserRequestDto {
  const _$VerifyUserRequestDtoImpl(
      {required this.phoneNumber, required this.token});

  factory _$VerifyUserRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyUserRequestDtoImplFromJson(json);

  @override
  final String phoneNumber;
  @override
  final String token;

  @override
  String toString() {
    return 'VerifyUserRequestDto(phoneNumber: $phoneNumber, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyUserRequestDtoImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, token);

  /// Create a copy of VerifyUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyUserRequestDtoImplCopyWith<_$VerifyUserRequestDtoImpl>
      get copyWith =>
          __$$VerifyUserRequestDtoImplCopyWithImpl<_$VerifyUserRequestDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyUserRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _VerifyUserRequestDto implements VerifyUserRequestDto {
  const factory _VerifyUserRequestDto(
      {required final String phoneNumber,
      required final String token}) = _$VerifyUserRequestDtoImpl;

  factory _VerifyUserRequestDto.fromJson(Map<String, dynamic> json) =
      _$VerifyUserRequestDtoImpl.fromJson;

  @override
  String get phoneNumber;
  @override
  String get token;

  /// Create a copy of VerifyUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyUserRequestDtoImplCopyWith<_$VerifyUserRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
