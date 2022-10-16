// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Home _$$_HomeFromJson(Map<String, dynamic> json) => _$_Home(
      mainAddress: json['mainAddress'] == null
          ? null
          : MainAddress.fromJson(json['mainAddress'] as Map<String, dynamic>),
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      dealOfDay: (json['dealOfDay'] as List<dynamic>?)
          ?.map((e) => DealOfDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeToJson(_$_Home instance) => <String, dynamic>{
      'mainAddress': instance.mainAddress,
      'address': instance.address,
      'categories': instance.categories,
      'dealOfDay': instance.dealOfDay,
    };
