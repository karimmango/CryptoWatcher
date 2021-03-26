// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sadfa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payload _$_$_PayloadFromJson(Map<String, dynamic> json) {
  return _$_Payload(
    status: Status.fromJson(json['status'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) => Datum.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PayloadToJson(_$_Payload instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$_Datum _$_$_DatumFromJson(Map<String, dynamic> json) {
  return _$_Datum(
    id: json['id'] as int,
    name: json['name'] as String,
    symbol: json['symbol'] as String,
    slug: json['slug'] as String,
    numMarketPairs: json['numMarketPairs'] as int,
    dateAdded: DateTime.parse(json['dateAdded'] as String),
    tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    maxSupply: (json['maxSupply'] as num).toDouble(),
    circulatingSupply: (json['circulatingSupply'] as num).toDouble(),
    totalSupply: (json['totalSupply'] as num).toDouble(),
    platform: Platform.fromJson(json['platform'] as Map<String, dynamic>),
    cmcRank: json['cmcRank'] as int,
    lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    quote: Quote.fromJson(json['quote'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'numMarketPairs': instance.numMarketPairs,
      'dateAdded': instance.dateAdded.toIso8601String(),
      'tags': instance.tags,
      'maxSupply': instance.maxSupply,
      'circulatingSupply': instance.circulatingSupply,
      'totalSupply': instance.totalSupply,
      'platform': instance.platform,
      'cmcRank': instance.cmcRank,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'quote': instance.quote,
    };

_$_Platform _$_$_PlatformFromJson(Map<String, dynamic> json) {
  return _$_Platform(
    id: json['id'] as int,
    name: json['name'] as String,
    symbol: json['symbol'] as String,
    slug: json['slug'] as String,
    tokenAddress: json['tokenAddress'] as String,
  );
}

Map<String, dynamic> _$_$_PlatformToJson(_$_Platform instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'tokenAddress': instance.tokenAddress,
    };

_$_Quote _$_$_QuoteFromJson(Map<String, dynamic> json) {
  return _$_Quote(
    usd: Usd.fromJson(json['USD'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_QuoteToJson(_$_Quote instance) => <String, dynamic>{
      'USD': instance.usd,
    };

_$_Usd _$_$_UsdFromJson(Map<String, dynamic> json) {
  return _$_Usd(
    price: (json['price'] as num).toDouble(),
    volume24H: (json['volume24_h'] as num).toDouble(),
    percentChange1H: (json['percent_change1_h'] as num).toDouble(),
    percentChange24H: (json['percent_change24_h'] as num).toDouble(),
    percentChange7D: (json['percent_change7_d'] as num).toDouble(),
    marketCap: (json['market_cap'] as num).toDouble(),
    lastUpdated: DateTime.parse(json['last_updated'] as String),
  );
}

Map<String, dynamic> _$_$_UsdToJson(_$_Usd instance) => <String, dynamic>{
      'price': instance.price,
      'volume24_h': instance.volume24H,
      'percent_change1_h': instance.percentChange1H,
      'percent_change24_h': instance.percentChange24H,
      'percent_change7_d': instance.percentChange7D,
      'market_cap': instance.marketCap,
      'last_updated': instance.lastUpdated.toIso8601String(),
    };

_$_Status _$_$_StatusFromJson(Map<String, dynamic> json) {
  return _$_Status(
    timestamp: DateTime.parse(json['timestamp'] as String),
    errorCode: json['errorCode'] as int,
    errorMessage: json['errorMessage'],
    elapsed: json['elapsed'] as int,
    creditCount: json['creditCount'] as int,
    notice: json['notice'],
  );
}

Map<String, dynamic> _$_$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'elapsed': instance.elapsed,
      'creditCount': instance.creditCount,
      'notice': instance.notice,
    };
