// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateUserRequest {
  @JsonKey(name: DatabaseConstants.latitude)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.longitude)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.address)
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.title)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.description)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.price)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: DatabaseConstants.status)
  String get status => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserRequestCopyWith<CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestCopyWith<$Res> {
  factory $CreateUserRequestCopyWith(
          CreateUserRequest value, $Res Function(CreateUserRequest) then) =
      _$CreateUserRequestCopyWithImpl<$Res, CreateUserRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.latitude) double latitude,
      @JsonKey(name: DatabaseConstants.longitude) double longitude,
      @JsonKey(name: DatabaseConstants.address) String address,
      @JsonKey(name: DatabaseConstants.title) String title,
      @JsonKey(name: DatabaseConstants.description) String description,
      @JsonKey(name: DatabaseConstants.price) double price,
      @JsonKey(name: DatabaseConstants.status) String status});
}

/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res, $Val extends CreateUserRequest>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserRequestImplCopyWith<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  factory _$$CreateUserRequestImplCopyWith(_$CreateUserRequestImpl value,
          $Res Function(_$CreateUserRequestImpl) then) =
      __$$CreateUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: DatabaseConstants.latitude) double latitude,
      @JsonKey(name: DatabaseConstants.longitude) double longitude,
      @JsonKey(name: DatabaseConstants.address) String address,
      @JsonKey(name: DatabaseConstants.title) String title,
      @JsonKey(name: DatabaseConstants.description) String description,
      @JsonKey(name: DatabaseConstants.price) double price,
      @JsonKey(name: DatabaseConstants.status) String status});
}

/// @nodoc
class __$$CreateUserRequestImplCopyWithImpl<$Res>
    extends _$CreateUserRequestCopyWithImpl<$Res, _$CreateUserRequestImpl>
    implements _$$CreateUserRequestImplCopyWith<$Res> {
  __$$CreateUserRequestImplCopyWithImpl(_$CreateUserRequestImpl _value,
      $Res Function(_$CreateUserRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? status = null,
  }) {
    return _then(_$CreateUserRequestImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserRequestImpl implements _CreateUserRequest {
  const _$CreateUserRequestImpl(
      {@JsonKey(name: DatabaseConstants.latitude) required this.latitude,
      @JsonKey(name: DatabaseConstants.longitude) required this.longitude,
      @JsonKey(name: DatabaseConstants.address) required this.address,
      @JsonKey(name: DatabaseConstants.title) required this.title,
      @JsonKey(name: DatabaseConstants.description) required this.description,
      @JsonKey(name: DatabaseConstants.price) required this.price,
      @JsonKey(name: DatabaseConstants.status) required this.status});

  @override
  @JsonKey(name: DatabaseConstants.latitude)
  final double latitude;
  @override
  @JsonKey(name: DatabaseConstants.longitude)
  final double longitude;
  @override
  @JsonKey(name: DatabaseConstants.address)
  final String address;
  @override
  @JsonKey(name: DatabaseConstants.title)
  final String title;
  @override
  @JsonKey(name: DatabaseConstants.description)
  final String description;
  @override
  @JsonKey(name: DatabaseConstants.price)
  final double price;
  @override
  @JsonKey(name: DatabaseConstants.status)
  final String status;

  @override
  String toString() {
    return 'CreateUserRequest(latitude: $latitude, longitude: $longitude, address: $address, title: $title, description: $description, price: $price, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserRequestImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, address,
      title, description, price, status);

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserRequestImplCopyWith<_$CreateUserRequestImpl> get copyWith =>
      __$$CreateUserRequestImplCopyWithImpl<_$CreateUserRequestImpl>(
          this, _$identity);
}

abstract class _CreateUserRequest implements CreateUserRequest {
  const factory _CreateUserRequest(
      {@JsonKey(name: DatabaseConstants.latitude)
      required final double latitude,
      @JsonKey(name: DatabaseConstants.longitude)
      required final double longitude,
      @JsonKey(name: DatabaseConstants.address) required final String address,
      @JsonKey(name: DatabaseConstants.title) required final String title,
      @JsonKey(name: DatabaseConstants.description)
      required final String description,
      @JsonKey(name: DatabaseConstants.price) required final double price,
      @JsonKey(name: DatabaseConstants.status)
      required final String status}) = _$CreateUserRequestImpl;

  @override
  @JsonKey(name: DatabaseConstants.latitude)
  double get latitude;
  @override
  @JsonKey(name: DatabaseConstants.longitude)
  double get longitude;
  @override
  @JsonKey(name: DatabaseConstants.address)
  String get address;
  @override
  @JsonKey(name: DatabaseConstants.title)
  String get title;
  @override
  @JsonKey(name: DatabaseConstants.description)
  String get description;
  @override
  @JsonKey(name: DatabaseConstants.price)
  double get price;
  @override
  @JsonKey(name: DatabaseConstants.status)
  String get status;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserRequestImplCopyWith<_$CreateUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
