class crypto {
  String name;
  String symbol;
  double price;
  double volume24H;
  double percentChange1H;
  double percentChange24H;
  double percentChange7D;
  double marketCap;
  DateTime lastUpdated;
  crypto({
    required this.name,
    required this.symbol,
    required this.price,
    required this.volume24H,
    required this.percentChange1H,
    required this.percentChange24H,
    required this.percentChange7D,
    required this.marketCap,
    required this.lastUpdated,
  });

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
