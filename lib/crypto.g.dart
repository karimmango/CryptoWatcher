// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_crypto _$_$_cryptoFromJson(Map<String, dynamic> json) {
  return _$_crypto(
    id: json['id'] as String,
    name: json['name'] as String,
    symbol: json['symbol'] as String,
    price: json['price'] as String,
    circulating_supply: json['circulating_supply'] as String,
    market_cap: json['market_cap'] as String,
    price_change: json['price_change'] as String,
    price_change_pct: json['price_change_pct'] as String,
  );
}

Map<String, dynamic> _$_$_cryptoToJson(_$_crypto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'price': instance.price,
      'circulating_supply': instance.circulating_supply,
      'market_cap': instance.market_cap,
      'price_change': instance.price_change,
      'price_change_pct': instance.price_change_pct,
    };
