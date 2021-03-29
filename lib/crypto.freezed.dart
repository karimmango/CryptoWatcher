// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'crypto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

crypto _$cryptoFromJson(Map<String, dynamic> json) {
  return _crypto.fromJson(json);
}

/// @nodoc
class _$cryptoTearOff {
  const _$cryptoTearOff();

  _crypto call(
      {required String id,
      required String name,
      required String symbol,
      required String price,
      required String circulating_supply}) {
    return _crypto(
      id: id,
      name: name,
      symbol: symbol,
      price: price,
      circulating_supply: circulating_supply,
    );
  }

  crypto fromJson(Map<String, Object> json) {
    return crypto.fromJson(json);
  }
}

/// @nodoc
const $crypto = _$cryptoTearOff();

/// @nodoc
mixin _$crypto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get circulating_supply => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $cryptoCopyWith<crypto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $cryptoCopyWith<$Res> {
  factory $cryptoCopyWith(crypto value, $Res Function(crypto) then) =
      _$cryptoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String symbol,
      String price,
      String circulating_supply});
}

/// @nodoc
class _$cryptoCopyWithImpl<$Res> implements $cryptoCopyWith<$Res> {
  _$cryptoCopyWithImpl(this._value, this._then);

  final crypto _value;
  // ignore: unused_field
  final $Res Function(crypto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? price = freezed,
    Object? circulating_supply = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      circulating_supply: circulating_supply == freezed
          ? _value.circulating_supply
          : circulating_supply // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$cryptoCopyWith<$Res> implements $cryptoCopyWith<$Res> {
  factory _$cryptoCopyWith(_crypto value, $Res Function(_crypto) then) =
      __$cryptoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String symbol,
      String price,
      String circulating_supply});
}

/// @nodoc
class __$cryptoCopyWithImpl<$Res> extends _$cryptoCopyWithImpl<$Res>
    implements _$cryptoCopyWith<$Res> {
  __$cryptoCopyWithImpl(_crypto _value, $Res Function(_crypto) _then)
      : super(_value, (v) => _then(v as _crypto));

  @override
  _crypto get _value => super._value as _crypto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? price = freezed,
    Object? circulating_supply = freezed,
  }) {
    return _then(_crypto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      circulating_supply: circulating_supply == freezed
          ? _value.circulating_supply
          : circulating_supply // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_crypto implements _crypto {
  const _$_crypto(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.price,
      required this.circulating_supply});

  factory _$_crypto.fromJson(Map<String, dynamic> json) =>
      _$_$_cryptoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String price;
  @override
  final String circulating_supply;

  @override
  String toString() {
    return 'crypto(id: $id, name: $name, symbol: $symbol, price: $price, circulating_supply: $circulating_supply)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _crypto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.circulating_supply, circulating_supply) ||
                const DeepCollectionEquality()
                    .equals(other.circulating_supply, circulating_supply)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(circulating_supply);

  @JsonKey(ignore: true)
  @override
  _$cryptoCopyWith<_crypto> get copyWith =>
      __$cryptoCopyWithImpl<_crypto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_cryptoToJson(this);
  }
}

abstract class _crypto implements crypto {
  const factory _crypto(
      {required String id,
      required String name,
      required String symbol,
      required String price,
      required String circulating_supply}) = _$_crypto;

  factory _crypto.fromJson(Map<String, dynamic> json) = _$_crypto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  String get price => throw _privateConstructorUsedError;
  @override
  String get circulating_supply => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$cryptoCopyWith<_crypto> get copyWith => throw _privateConstructorUsedError;
}
