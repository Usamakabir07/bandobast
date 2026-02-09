// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_picture_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProfilePictureRequestDto _$UpdateProfilePictureRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateProfilePictureRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfilePictureRequestDto {
  @JsonKey(name: DatabaseConstants.userId)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(
      name: DatabaseConstants.imageUrl,
      fromJson: XFileConverter.fromJson,
      toJson: XFileConverter.toJson)
  XFile get image => throw _privateConstructorUsedError;

  /// Serializes this UpdateProfilePictureRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfilePictureRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfilePictureRequestDtoCopyWith<UpdateProfilePictureRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfilePictureRequestDtoCopyWith<$Res> {
  factory $UpdateProfilePictureRequestDtoCopyWith(
          UpdateProfilePictureRequestDto value,
          $Res Function(UpdateProfilePictureRequestDto) then) =
      _$UpdateProfilePictureRequestDtoCopyWithImpl<$Res,
          UpdateProfilePictureRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.userId) String userId,
      @JsonKey(
          name: DatabaseConstants.imageUrl,
          fromJson: XFileConverter.fromJson,
          toJson: XFileConverter.toJson)
      XFile image});
}

/// @nodoc
class _$UpdateProfilePictureRequestDtoCopyWithImpl<$Res,
        $Val extends UpdateProfilePictureRequestDto>
    implements $UpdateProfilePictureRequestDtoCopyWith<$Res> {
  _$UpdateProfilePictureRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfilePictureRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfilePictureRequestDtoImplCopyWith<$Res>
    implements $UpdateProfilePictureRequestDtoCopyWith<$Res> {
  factory _$$UpdateProfilePictureRequestDtoImplCopyWith(
          _$UpdateProfilePictureRequestDtoImpl value,
          $Res Function(_$UpdateProfilePictureRequestDtoImpl) then) =
      __$$UpdateProfilePictureRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.userId) String userId,
      @JsonKey(
          name: DatabaseConstants.imageUrl,
          fromJson: XFileConverter.fromJson,
          toJson: XFileConverter.toJson)
      XFile image});
}

/// @nodoc
class __$$UpdateProfilePictureRequestDtoImplCopyWithImpl<$Res>
    extends _$UpdateProfilePictureRequestDtoCopyWithImpl<$Res,
        _$UpdateProfilePictureRequestDtoImpl>
    implements _$$UpdateProfilePictureRequestDtoImplCopyWith<$Res> {
  __$$UpdateProfilePictureRequestDtoImplCopyWithImpl(
      _$UpdateProfilePictureRequestDtoImpl _value,
      $Res Function(_$UpdateProfilePictureRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfilePictureRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? image = null,
  }) {
    return _then(_$UpdateProfilePictureRequestDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProfilePictureRequestDtoImpl
    implements _UpdateProfilePictureRequestDto {
  const _$UpdateProfilePictureRequestDtoImpl(
      {@JsonKey(name: DatabaseConstants.userId) required this.userId,
      @JsonKey(
          name: DatabaseConstants.imageUrl,
          fromJson: XFileConverter.fromJson,
          toJson: XFileConverter.toJson)
      required this.image});

  factory _$UpdateProfilePictureRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateProfilePictureRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: DatabaseConstants.userId)
  final String userId;
  @override
  @JsonKey(
      name: DatabaseConstants.imageUrl,
      fromJson: XFileConverter.fromJson,
      toJson: XFileConverter.toJson)
  final XFile image;

  @override
  String toString() {
    return 'UpdateProfilePictureRequestDto(userId: $userId, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfilePictureRequestDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, image);

  /// Create a copy of UpdateProfilePictureRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfilePictureRequestDtoImplCopyWith<
          _$UpdateProfilePictureRequestDtoImpl>
      get copyWith => __$$UpdateProfilePictureRequestDtoImplCopyWithImpl<
          _$UpdateProfilePictureRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfilePictureRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfilePictureRequestDto
    implements UpdateProfilePictureRequestDto {
  const factory _UpdateProfilePictureRequestDto(
      {@JsonKey(name: DatabaseConstants.userId) required final String userId,
      @JsonKey(
          name: DatabaseConstants.imageUrl,
          fromJson: XFileConverter.fromJson,
          toJson: XFileConverter.toJson)
      required final XFile image}) = _$UpdateProfilePictureRequestDtoImpl;

  factory _UpdateProfilePictureRequestDto.fromJson(Map<String, dynamic> json) =
      _$UpdateProfilePictureRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: DatabaseConstants.userId)
  String get userId;
  @override
  @JsonKey(
      name: DatabaseConstants.imageUrl,
      fromJson: XFileConverter.fromJson,
      toJson: XFileConverter.toJson)
  XFile get image;

  /// Create a copy of UpdateProfilePictureRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfilePictureRequestDtoImplCopyWith<
          _$UpdateProfilePictureRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
