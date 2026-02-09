// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_picture_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProfilePictureRequest {
  @JsonKey(name: DatabaseConstants.userId)
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(
      name: DatabaseConstants.imageUrl,
      fromJson: XFileConverter.fromJson,
      toJson: XFileConverter.toJson)
  XFile get image => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfilePictureRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfilePictureRequestCopyWith<UpdateProfilePictureRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfilePictureRequestCopyWith<$Res> {
  factory $UpdateProfilePictureRequestCopyWith(
          UpdateProfilePictureRequest value,
          $Res Function(UpdateProfilePictureRequest) then) =
      _$UpdateProfilePictureRequestCopyWithImpl<$Res,
          UpdateProfilePictureRequest>;
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
class _$UpdateProfilePictureRequestCopyWithImpl<$Res,
        $Val extends UpdateProfilePictureRequest>
    implements $UpdateProfilePictureRequestCopyWith<$Res> {
  _$UpdateProfilePictureRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfilePictureRequest
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
abstract class _$$UpdateProfilePictureRequestImplCopyWith<$Res>
    implements $UpdateProfilePictureRequestCopyWith<$Res> {
  factory _$$UpdateProfilePictureRequestImplCopyWith(
          _$UpdateProfilePictureRequestImpl value,
          $Res Function(_$UpdateProfilePictureRequestImpl) then) =
      __$$UpdateProfilePictureRequestImplCopyWithImpl<$Res>;
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
class __$$UpdateProfilePictureRequestImplCopyWithImpl<$Res>
    extends _$UpdateProfilePictureRequestCopyWithImpl<$Res,
        _$UpdateProfilePictureRequestImpl>
    implements _$$UpdateProfilePictureRequestImplCopyWith<$Res> {
  __$$UpdateProfilePictureRequestImplCopyWithImpl(
      _$UpdateProfilePictureRequestImpl _value,
      $Res Function(_$UpdateProfilePictureRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfilePictureRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? image = null,
  }) {
    return _then(_$UpdateProfilePictureRequestImpl(
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

class _$UpdateProfilePictureRequestImpl
    implements _UpdateProfilePictureRequest {
  const _$UpdateProfilePictureRequestImpl(
      {@JsonKey(name: DatabaseConstants.userId) required this.userId,
      @JsonKey(
          name: DatabaseConstants.imageUrl,
          fromJson: XFileConverter.fromJson,
          toJson: XFileConverter.toJson)
      required this.image});

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
    return 'UpdateProfilePictureRequest(userId: $userId, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfilePictureRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, image);

  /// Create a copy of UpdateProfilePictureRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfilePictureRequestImplCopyWith<_$UpdateProfilePictureRequestImpl>
      get copyWith => __$$UpdateProfilePictureRequestImplCopyWithImpl<
          _$UpdateProfilePictureRequestImpl>(this, _$identity);
}

abstract class _UpdateProfilePictureRequest
    implements UpdateProfilePictureRequest {
  const factory _UpdateProfilePictureRequest(
      {@JsonKey(name: DatabaseConstants.userId) required final String userId,
      @JsonKey(
          name: DatabaseConstants.imageUrl,
          fromJson: XFileConverter.fromJson,
          toJson: XFileConverter.toJson)
      required final XFile image}) = _$UpdateProfilePictureRequestImpl;

  @override
  @JsonKey(name: DatabaseConstants.userId)
  String get userId;
  @override
  @JsonKey(
      name: DatabaseConstants.imageUrl,
      fromJson: XFileConverter.fromJson,
      toJson: XFileConverter.toJson)
  XFile get image;

  /// Create a copy of UpdateProfilePictureRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfilePictureRequestImplCopyWith<_$UpdateProfilePictureRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
