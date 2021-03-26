import 'dart:convert';

import 'package:crypto_watcher/sadfa.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto.freezed.dart';
part 'crypto.g.dart';

@freezed
abstract class crypto with _$crypto {
  const factory crypto({
    required String id,
    required String name,
    required String symbol,
    required String price,
  }) = _crypto;

  factory crypto.fromJson(Map<String, dynamic> json) => crypto(
      id: json["id"],
      name: json["name"],
      symbol: json["symbol"],
      price: json["price"]);
}
