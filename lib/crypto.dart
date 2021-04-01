import 'dart:convert';

import 'package:crypto_watcher/sadfa.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto.freezed.dart';
part 'crypto.g.dart';

@freezed
abstract class crypto with _$crypto {
  const factory crypto(
      {required String id,
      required String name,
      required String symbol,
      required String price,
      required String circulating_supply,
      //required String max_supply,
      required String market_cap,
      required String price_change,
      required String price_change_pct}) = _crypto;

  factory crypto.fromJson(Map<String, dynamic> json) => crypto(
        id: json["id"],
        name: json["name"],
        symbol: json["symbol"],
        price: json["price"],
        circulating_supply: json["circulating_supply"],
        //max_supply: json["max_supply"],
        market_cap: json["market_cap"],
        price_change: json["1d"]["price_change"],
        price_change_pct: json["1d"]["price_change_pct"],
      );
}
