// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_of_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DealOfDay _$$_DealOfDayFromJson(Map<String, dynamic> json) => _$_DealOfDay(
      title: json['title'] as String?,
      color: json['color'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      address: json['address'] as String?,
      prevPrice: json['prevPrice'] as int?,
      isFav: json['isFav'] as bool?,
    );

Map<String, dynamic> _$$_DealOfDayToJson(_$_DealOfDay instance) =>
    <String, dynamic>{
      'title': instance.title,
      'color': instance.color,
      'description': instance.description,
      'price': instance.price,
      'address': instance.address,
      'prevPrice': instance.prevPrice,
      'isFav': instance.isFav,
    };
