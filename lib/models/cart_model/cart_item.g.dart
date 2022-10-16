// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      itemName: json['itemName'] as String?,
      description: json['description'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'description': instance.description,
      'totalPrice': instance.totalPrice,
      'price': instance.price,
      'quantity': instance.quantity,
    };
