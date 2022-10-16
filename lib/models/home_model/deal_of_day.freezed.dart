// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deal_of_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DealOfDay _$DealOfDayFromJson(Map<String, dynamic> json) {
  return _DealOfDay.fromJson(json);
}

/// @nodoc
mixin _$DealOfDay {
  String? get title => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  int? get prevPrice => throw _privateConstructorUsedError;
  bool? get isFav => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealOfDayCopyWith<DealOfDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealOfDayCopyWith<$Res> {
  factory $DealOfDayCopyWith(DealOfDay value, $Res Function(DealOfDay) then) =
      _$DealOfDayCopyWithImpl<$Res, DealOfDay>;
  @useResult
  $Res call(
      {String? title,
      String? color,
      String? description,
      int? price,
      String? address,
      int? prevPrice,
      bool? isFav});
}

/// @nodoc
class _$DealOfDayCopyWithImpl<$Res, $Val extends DealOfDay>
    implements $DealOfDayCopyWith<$Res> {
  _$DealOfDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? address = freezed,
    Object? prevPrice = freezed,
    Object? isFav = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPrice: freezed == prevPrice
          ? _value.prevPrice
          : prevPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DealOfDayCopyWith<$Res> implements $DealOfDayCopyWith<$Res> {
  factory _$$_DealOfDayCopyWith(
          _$_DealOfDay value, $Res Function(_$_DealOfDay) then) =
      __$$_DealOfDayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? color,
      String? description,
      int? price,
      String? address,
      int? prevPrice,
      bool? isFav});
}

/// @nodoc
class __$$_DealOfDayCopyWithImpl<$Res>
    extends _$DealOfDayCopyWithImpl<$Res, _$_DealOfDay>
    implements _$$_DealOfDayCopyWith<$Res> {
  __$$_DealOfDayCopyWithImpl(
      _$_DealOfDay _value, $Res Function(_$_DealOfDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? address = freezed,
    Object? prevPrice = freezed,
    Object? isFav = freezed,
  }) {
    return _then(_$_DealOfDay(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPrice: freezed == prevPrice
          ? _value.prevPrice
          : prevPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      isFav: freezed == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DealOfDay implements _DealOfDay {
  _$_DealOfDay(
      {this.title,
      this.color,
      this.description,
      this.price,
      this.address,
      this.prevPrice,
      this.isFav});

  factory _$_DealOfDay.fromJson(Map<String, dynamic> json) =>
      _$$_DealOfDayFromJson(json);

  @override
  final String? title;
  @override
  final String? color;
  @override
  final String? description;
  @override
  final int? price;
  @override
  final String? address;
  @override
  final int? prevPrice;
  @override
  final bool? isFav;

  @override
  String toString() {
    return 'DealOfDay(title: $title, color: $color, description: $description, price: $price, address: $address, prevPrice: $prevPrice, isFav: $isFav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DealOfDay &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.prevPrice, prevPrice) ||
                other.prevPrice == prevPrice) &&
            (identical(other.isFav, isFav) || other.isFav == isFav));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, color, description, price, address, prevPrice, isFav);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DealOfDayCopyWith<_$_DealOfDay> get copyWith =>
      __$$_DealOfDayCopyWithImpl<_$_DealOfDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DealOfDayToJson(
      this,
    );
  }
}

abstract class _DealOfDay implements DealOfDay {
  factory _DealOfDay(
      {final String? title,
      final String? color,
      final String? description,
      final int? price,
      final String? address,
      final int? prevPrice,
      final bool? isFav}) = _$_DealOfDay;

  factory _DealOfDay.fromJson(Map<String, dynamic> json) =
      _$_DealOfDay.fromJson;

  @override
  String? get title;
  @override
  String? get color;
  @override
  String? get description;
  @override
  int? get price;
  @override
  String? get address;
  @override
  int? get prevPrice;
  @override
  bool? get isFav;
  @override
  @JsonKey(ignore: true)
  _$$_DealOfDayCopyWith<_$_DealOfDay> get copyWith =>
      throw _privateConstructorUsedError;
}
