// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Home _$HomeFromJson(Map<String, dynamic> json) {
  return _Home.fromJson(json);
}

/// @nodoc
mixin _$Home {
  MainAddress? get mainAddress => throw _privateConstructorUsedError;
  List<Address>? get address => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  List<DealOfDay>? get dealOfDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res, Home>;
  @useResult
  $Res call(
      {MainAddress? mainAddress,
      List<Address>? address,
      List<Category>? categories,
      List<DealOfDay>? dealOfDay});

  $MainAddressCopyWith<$Res>? get mainAddress;
}

/// @nodoc
class _$HomeCopyWithImpl<$Res, $Val extends Home>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainAddress = freezed,
    Object? address = freezed,
    Object? categories = freezed,
    Object? dealOfDay = freezed,
  }) {
    return _then(_value.copyWith(
      mainAddress: freezed == mainAddress
          ? _value.mainAddress
          : mainAddress // ignore: cast_nullable_to_non_nullable
              as MainAddress?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      dealOfDay: freezed == dealOfDay
          ? _value.dealOfDay
          : dealOfDay // ignore: cast_nullable_to_non_nullable
              as List<DealOfDay>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainAddressCopyWith<$Res>? get mainAddress {
    if (_value.mainAddress == null) {
      return null;
    }

    return $MainAddressCopyWith<$Res>(_value.mainAddress!, (value) {
      return _then(_value.copyWith(mainAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$_HomeCopyWith(_$_Home value, $Res Function(_$_Home) then) =
      __$$_HomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MainAddress? mainAddress,
      List<Address>? address,
      List<Category>? categories,
      List<DealOfDay>? dealOfDay});

  @override
  $MainAddressCopyWith<$Res>? get mainAddress;
}

/// @nodoc
class __$$_HomeCopyWithImpl<$Res> extends _$HomeCopyWithImpl<$Res, _$_Home>
    implements _$$_HomeCopyWith<$Res> {
  __$$_HomeCopyWithImpl(_$_Home _value, $Res Function(_$_Home) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainAddress = freezed,
    Object? address = freezed,
    Object? categories = freezed,
    Object? dealOfDay = freezed,
  }) {
    return _then(_$_Home(
      mainAddress: freezed == mainAddress
          ? _value.mainAddress
          : mainAddress // ignore: cast_nullable_to_non_nullable
              as MainAddress?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      dealOfDay: freezed == dealOfDay
          ? _value._dealOfDay
          : dealOfDay // ignore: cast_nullable_to_non_nullable
              as List<DealOfDay>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Home implements _Home {
  _$_Home(
      {this.mainAddress,
      final List<Address>? address,
      final List<Category>? categories,
      final List<DealOfDay>? dealOfDay})
      : _address = address,
        _categories = categories,
        _dealOfDay = dealOfDay;

  factory _$_Home.fromJson(Map<String, dynamic> json) => _$$_HomeFromJson(json);

  @override
  final MainAddress? mainAddress;
  final List<Address>? _address;
  @override
  List<Address>? get address {
    final value = _address;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DealOfDay>? _dealOfDay;
  @override
  List<DealOfDay>? get dealOfDay {
    final value = _dealOfDay;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Home(mainAddress: $mainAddress, address: $address, categories: $categories, dealOfDay: $dealOfDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Home &&
            (identical(other.mainAddress, mainAddress) ||
                other.mainAddress == mainAddress) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._dealOfDay, _dealOfDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainAddress,
      const DeepCollectionEquality().hash(_address),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_dealOfDay));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeCopyWith<_$_Home> get copyWith =>
      __$$_HomeCopyWithImpl<_$_Home>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeToJson(
      this,
    );
  }
}

abstract class _Home implements Home {
  factory _Home(
      {final MainAddress? mainAddress,
      final List<Address>? address,
      final List<Category>? categories,
      final List<DealOfDay>? dealOfDay}) = _$_Home;

  factory _Home.fromJson(Map<String, dynamic> json) = _$_Home.fromJson;

  @override
  MainAddress? get mainAddress;
  @override
  List<Address>? get address;
  @override
  List<Category>? get categories;
  @override
  List<DealOfDay>? get dealOfDay;
  @override
  @JsonKey(ignore: true)
  _$$_HomeCopyWith<_$_Home> get copyWith => throw _privateConstructorUsedError;
}
