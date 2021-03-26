import 'package:freezed_annotation/freezed_annotation.dart';

part 'sadfa.freezed.dart';
part 'sadfa.g.dart';

@freezed
abstract class Payload with _$Payload {
  const factory Payload({
    required Status status,
    required List<Datum> data,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> str) => _$PayloadFromJson(str);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required int id,
    required String name,
    required String symbol,
    required String slug,
    required int numMarketPairs,
    required DateTime dateAdded,
    required List<String> tags,
    required double maxSupply,
    required double circulatingSupply,
    required double totalSupply,
    required Platform platform,
    required int cmcRank,
    required DateTime lastUpdated,
    required Quote quote,
  }) = _Datum;
  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
abstract class Platform with _$Platform {
  const factory Platform({
    required int id,
    required String name,
    required String symbol,
    required String slug,
    required String tokenAddress,
  }) = _Platform;
  factory Platform.fromJson(Map<String, dynamic> json) =>
      _$PlatformFromJson(json);
}

@freezed
abstract class Quote with _$Quote {
  const factory Quote({
    @JsonKey(name: 'USD') required Usd usd,
  }) = _Quote;
  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
}

@freezed
abstract class Usd with _$Usd {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Usd({
    required double price,
    required double volume24H,
    required double percentChange1H,
    required double percentChange24H,
    required double percentChange7D,
    required double marketCap,
    required DateTime lastUpdated,
  }) = _Usd;
  factory Usd.fromJson(Map<String, dynamic> json) => Usd(
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

@freezed
abstract class Status with _$Status {
  const factory Status({
    required DateTime timestamp,
    required int errorCode,
    required dynamic errorMessage,
    required int elapsed,
    required int creditCount,
    required dynamic notice,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
