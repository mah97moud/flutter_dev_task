import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'category.dart';
import 'deal_of_day.dart';
import 'main_address.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class Home with _$Home {
  factory Home({
    MainAddress? mainAddress,
    List<Address>? address,
    List<Category>? categories,
    List<DealOfDay>? dealOfDay,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}
