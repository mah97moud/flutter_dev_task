import 'package:freezed_annotation/freezed_annotation.dart';

part 'deal_of_day.freezed.dart';
part 'deal_of_day.g.dart';

@freezed
class DealOfDay with _$DealOfDay {
  factory DealOfDay({
    String? title,
    String? color,
    String? description,
    int? price,
    String? address,
    int? prevPrice,
    bool? isFav,
  }) = _DealOfDay;

  factory DealOfDay.fromJson(Map<String, dynamic> json) =>
      _$DealOfDayFromJson(json);
}
