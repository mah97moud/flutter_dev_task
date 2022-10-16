import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_address.freezed.dart';
part 'main_address.g.dart';

@freezed
class MainAddress with _$MainAddress {
  factory MainAddress({
    String? title,
    String? address,
    String? subAdd,
  }) = _MainAddress;

  factory MainAddress.fromJson(Map<String, dynamic> json) =>
      _$MainAddressFromJson(json);
}
