import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto.freezed.dart';

@freezed
abstract class crypto with _$crypto {
  const factory crypto({
    required String name,
    required String symbol,
    required double price,
    required double volume24H,
    required double percentChange1H,
    required double percentChange24H,
    required double percentChange7D,
    required double marketCap,
    required DateTime lastUpdated,
  }) = _crypto;

  factory crypto.fromJson(Map<String, dynamic> json) => crypto(
        name: json["name"] == null ? null : json["name"],
        symbol: json["symbol"] == null ? null : json["symbol"],
        price: json["price"] == null ? null : json["price"].toDouble(),
        volume24H:
            json["volume_24h"] == null ? null : json["volume_24h"].toDouble(),
        percentChange1H: json["percent_change_1h"] == null
            ? null
            : json["percent_change_1h"].toDouble(),
        percentChange24H: json["percent_change_24h"] == null
            ? null
            : json["percent_change_24h"].toDouble(),
        percentChange7D: json["percent_change_7d"] == null
            ? null
            : json["percent_change_7d"].toDouble(),
        marketCap:
            json["market_cap"] == null ? null : json["market_cap"].toDouble(),
        lastUpdated: DateTime.parse(json["last_updated"]),
      );
}
