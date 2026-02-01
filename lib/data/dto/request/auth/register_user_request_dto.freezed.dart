// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterUserRequestDto _$RegisterUserRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _RegisterUserRequestDto.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserRequestDto {
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this RegisterUserRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterUserRequestDtoCopyWith<RegisterUserRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserRequestDtoCopyWith<$Res> {
  factory $RegisterUserRequestDtoCopyWith(RegisterUserRequestDto value,
          $Res Function(RegisterUserRequestDto) then) =
      _$RegisterUserRequestDtoCopyWithImpl<$Res, RegisterUserRequestDto>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$RegisterUserRequestDtoCopyWithImpl<$Res,
        $Val extends RegisterUserRequestDto>
    implements $RegisterUserRequestDtoCopyWith<$Res> {
  _$RegisterUserRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterUserRequestDto
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
abstract class _$$RegisterUserRequestDtoImplCopyWith<$Res>
    implements $RegisterUserRequestDtoCopyWith<$Res> {
  factory _$$RegisterUserRequestDtoImplCopyWith(
          _$RegisterUserRequestDtoImpl value,
          $Res Function(_$RegisterUserRequestDtoImpl) then) =
      __$$RegisterUserRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$RegisterUserRequestDtoImplCopyWithImpl<$Res>
    extends _$RegisterUserRequestDtoCopyWithImpl<$Res,
        _$RegisterUserRequestDtoImpl>
    implements _$$RegisterUserRequestDtoImplCopyWith<$Res> {
  __$$RegisterUserRequestDtoImplCopyWithImpl(
      _$RegisterUserRequestDtoImpl _value,
      $Res Function(_$RegisterUserRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$RegisterUserRequestDtoImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUserRequestDtoImpl implements _RegisterUserRequestDto {
  const _$RegisterUserRequestDtoImpl({required this.phoneNumber});

  factory _$RegisterUserRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterUserRequestDtoImplFromJson(json);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterUserRequestDto(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserRequestDtoImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of RegisterUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserRequestDtoImplCopyWith<_$RegisterUserRequestDtoImpl>
      get copyWith => __$$RegisterUserRequestDtoImplCopyWithImpl<
          _$RegisterUserRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _RegisterUserRequestDto implements RegisterUserRequestDto {
  const factory _RegisterUserRequestDto({required final String phoneNumber}) =
      _$RegisterUserRequestDtoImpl;

  factory _RegisterUserRequestDto.fromJson(Map<String, dynamic> json) =
      _$RegisterUserRequestDtoImpl.fromJson;

  @override
  String get phoneNumber;

  /// Create a copy of RegisterUserRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserRequestDtoImplCopyWith<_$RegisterUserRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
