// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainAddress _$MainAddressFromJson(Map<String, dynamic> json) {
  return _MainAddress.fromJson(json);
}

/// @nodoc
mixin _$MainAddress {
  String? get title => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get subAdd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainAddressCopyWith<MainAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainAddressCopyWith<$Res> {
  factory $MainAddressCopyWith(
          MainAddress value, $Res Function(MainAddress) then) =
      _$MainAddressCopyWithImpl<$Res, MainAddress>;
  @useResult
  $Res call({String? title, String? address, String? subAdd});
}

/// @nodoc
class _$MainAddressCopyWithImpl<$Res, $Val extends MainAddress>
    implements $MainAddressCopyWith<$Res> {
  _$MainAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? address = freezed,
    Object? subAdd = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      subAdd: freezed == subAdd
          ? _value.subAdd
          : subAdd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainAddressCopyWith<$Res>
    implements $MainAddressCopyWith<$Res> {
  factory _$$_MainAddressCopyWith(
          _$_MainAddress value, $Res Function(_$_MainAddress) then) =
      __$$_MainAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? address, String? subAdd});
}

/// @nodoc
class __$$_MainAddressCopyWithImpl<$Res>
    extends _$MainAddressCopyWithImpl<$Res, _$_MainAddress>
    implements _$$_MainAddressCopyWith<$Res> {
  __$$_MainAddressCopyWithImpl(
      _$_MainAddress _value, $Res Function(_$_MainAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? address = freezed,
    Object? subAdd = freezed,
  }) {
    return _then(_$_MainAddress(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      subAdd: freezed == subAdd
          ? _value.subAdd
          : subAdd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainAddress implements _MainAddress {
  _$_MainAddress({this.title, this.address, this.subAdd});

  factory _$_MainAddress.fromJson(Map<String, dynamic> json) =>
      _$$_MainAddressFromJson(json);

  @override
  final String? title;
  @override
  final String? address;
  @override
  final String? subAdd;

  @override
  String toString() {
    return 'MainAddress(title: $title, address: $address, subAdd: $subAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainAddress &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.subAdd, subAdd) || other.subAdd == subAdd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, address, subAdd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainAddressCopyWith<_$_MainAddress> get copyWith =>
      __$$_MainAddressCopyWithImpl<_$_MainAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainAddressToJson(
      this,
    );
  }
}

abstract class _MainAddress implements MainAddress {
  factory _MainAddress(
      {final String? title,
      final String? address,
      final String? subAdd}) = _$_MainAddress;

  factory _MainAddress.fromJson(Map<String, dynamic> json) =
      _$_MainAddress.fromJson;

  @override
  String? get title;
  @override
  String? get address;
  @override
  String? get subAdd;
  @override
  @JsonKey(ignore: true)
  _$$_MainAddressCopyWith<_$_MainAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
