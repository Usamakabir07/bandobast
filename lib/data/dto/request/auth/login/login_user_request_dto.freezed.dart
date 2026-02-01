// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginUserRequestDto _$LoginUserRequestDtoFromJson(Map<String, dynamic> json) {
  return _LoginUserRequestDto.fromJson(json);
}

/// @nodoc
mixin _$LoginUserRequestDto {
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this LoginUserRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginUserRequestDtoCopyWith<LoginUserRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserRequestDtoCopyWith<$Res> {
  factory $LoginUserRequestDtoCopyWith(
          LoginUserRequestDto value, $Res Function(LoginUserRequestDto) then) =
      _$LoginUserRequestDtoCopyWithImpl<$Res, LoginUserRequestDto>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$LoginUserRequestDtoCopyWithImpl<$Res, $Val extends LoginUserRequestDto>
    implements $LoginUserRequestDtoCopyWith<$Res> {
  _$LoginUserRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginUserRequestDto
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
abstract class _$$LoginUserRequestDtoImplCopyWith<$Res>
    implements $LoginUserRequestDtoCopyWith<$Res> {
  factory _$$LoginUserRequestDtoImplCopyWith(_$LoginUserRequestDtoImpl value,
          $Res Function(_$LoginUserRequestDtoImpl) then) =
      __$$LoginUserRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$LoginUserRequestDtoImplCopyWithImpl<$Res>
    extends _$LoginUserRequestDtoCopyWithImpl<$Res, _$LoginUserRequestDtoImpl>
    implements _$$LoginUserRequestDtoImplCopyWith<$Res> {
  __$$LoginUserRequestDtoImplCopyWithImpl(_$LoginUserRequestDtoImpl _value,
      $Res Function(_$LoginUserRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$LoginUserRequestDtoImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginUserRequestDtoImpl implements _LoginUserRequestDto {
  const _$LoginUserRequestDtoImpl({required this.phoneNumber});

  factory _$LoginUserRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginUserRequestDtoImplFromJson(json);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginUserRequestDto(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserRequestDtoImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of LoginUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserRequestDtoImplCopyWith<_$LoginUserRequestDtoImpl> get copyWith =>
      __$$LoginUserRequestDtoImplCopyWithImpl<_$LoginUserRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginUserRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _LoginUserRequestDto implements LoginUserRequestDto {
  const factory _LoginUserRequestDto({required final String phoneNumber}) =
      _$LoginUserRequestDtoImpl;

  factory _LoginUserRequestDto.fromJson(Map<String, dynamic> json) =
      _$LoginUserRequestDtoImpl.fromJson;

  @override
  String get phoneNumber;

  /// Create a copy of LoginUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUserRequestDtoImplCopyWith<_$LoginUserRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
