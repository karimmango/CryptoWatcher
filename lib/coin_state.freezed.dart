// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinStateTearOff {
  const _$CoinStateTearOff();

  _CoinState call(
      {required List<dynamic> coins,
      required String newCoin,
      required crypto info_coin,
      required double portfolio_value}) {
    return _CoinState(
      coins: coins,
      newCoin: newCoin,
      info_coin: info_coin,
      portfolio_value: portfolio_value,
    );
  }
}

/// @nodoc
const $CoinState = _$CoinStateTearOff();

/// @nodoc
mixin _$CoinState {
  List<dynamic> get coins => throw _privateConstructorUsedError;
  String get newCoin =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  crypto get info_coin => throw _privateConstructorUsedError;
  double get portfolio_value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinStateCopyWith<CoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinStateCopyWith<$Res> {
  factory $CoinStateCopyWith(CoinState value, $Res Function(CoinState) then) =
      _$CoinStateCopyWithImpl<$Res>;
  $Res call(
      {List<dynamic> coins,
      String newCoin,
      crypto info_coin,
      double portfolio_value});

  $cryptoCopyWith<$Res> get info_coin;
}

/// @nodoc
class _$CoinStateCopyWithImpl<$Res> implements $CoinStateCopyWith<$Res> {
  _$CoinStateCopyWithImpl(this._value, this._then);

  final CoinState _value;
  // ignore: unused_field
  final $Res Function(CoinState) _then;

  @override
  $Res call({
    Object? coins = freezed,
    Object? newCoin = freezed,
    Object? info_coin = freezed,
    Object? portfolio_value = freezed,
  }) {
    return _then(_value.copyWith(
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      newCoin: newCoin == freezed
          ? _value.newCoin
          : newCoin // ignore: cast_nullable_to_non_nullable
              as String,
      info_coin: info_coin == freezed
          ? _value.info_coin
          : info_coin // ignore: cast_nullable_to_non_nullable
              as crypto,
      portfolio_value: portfolio_value == freezed
          ? _value.portfolio_value
          : portfolio_value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $cryptoCopyWith<$Res> get info_coin {
    return $cryptoCopyWith<$Res>(_value.info_coin, (value) {
      return _then(_value.copyWith(info_coin: value));
    });
  }
}

/// @nodoc
abstract class _$CoinStateCopyWith<$Res> implements $CoinStateCopyWith<$Res> {
  factory _$CoinStateCopyWith(
          _CoinState value, $Res Function(_CoinState) then) =
      __$CoinStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<dynamic> coins,
      String newCoin,
      crypto info_coin,
      double portfolio_value});

  @override
  $cryptoCopyWith<$Res> get info_coin;
}

/// @nodoc
class __$CoinStateCopyWithImpl<$Res> extends _$CoinStateCopyWithImpl<$Res>
    implements _$CoinStateCopyWith<$Res> {
  __$CoinStateCopyWithImpl(_CoinState _value, $Res Function(_CoinState) _then)
      : super(_value, (v) => _then(v as _CoinState));

  @override
  _CoinState get _value => super._value as _CoinState;

  @override
  $Res call({
    Object? coins = freezed,
    Object? newCoin = freezed,
    Object? info_coin = freezed,
    Object? portfolio_value = freezed,
  }) {
    return _then(_CoinState(
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      newCoin: newCoin == freezed
          ? _value.newCoin
          : newCoin // ignore: cast_nullable_to_non_nullable
              as String,
      info_coin: info_coin == freezed
          ? _value.info_coin
          : info_coin // ignore: cast_nullable_to_non_nullable
              as crypto,
      portfolio_value: portfolio_value == freezed
          ? _value.portfolio_value
          : portfolio_value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
class _$_CoinState implements _CoinState {
  const _$_CoinState(
      {required this.coins,
      required this.newCoin,
      required this.info_coin,
      required this.portfolio_value});

  @override
  final List<dynamic> coins;
  @override
  final String newCoin;
  @override // ignore: non_constant_identifier_names
  final crypto info_coin;
  @override
  final double portfolio_value;

  @override
  String toString() {
    return 'CoinState(coins: $coins, newCoin: $newCoin, info_coin: $info_coin, portfolio_value: $portfolio_value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoinState &&
            (identical(other.coins, coins) ||
                const DeepCollectionEquality().equals(other.coins, coins)) &&
            (identical(other.newCoin, newCoin) ||
                const DeepCollectionEquality()
                    .equals(other.newCoin, newCoin)) &&
            (identical(other.info_coin, info_coin) ||
                const DeepCollectionEquality()
                    .equals(other.info_coin, info_coin)) &&
            (identical(other.portfolio_value, portfolio_value) ||
                const DeepCollectionEquality()
                    .equals(other.portfolio_value, portfolio_value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coins) ^
      const DeepCollectionEquality().hash(newCoin) ^
      const DeepCollectionEquality().hash(info_coin) ^
      const DeepCollectionEquality().hash(portfolio_value);

  @JsonKey(ignore: true)
  @override
  _$CoinStateCopyWith<_CoinState> get copyWith =>
      __$CoinStateCopyWithImpl<_CoinState>(this, _$identity);
}

abstract class _CoinState implements CoinState {
  const factory _CoinState(
      {required List<dynamic> coins,
      required String newCoin,
      required crypto info_coin,
      required double portfolio_value}) = _$_CoinState;

  @override
  List<dynamic> get coins => throw _privateConstructorUsedError;
  @override
  String get newCoin => throw _privateConstructorUsedError;
  @override // ignore: non_constant_identifier_names
  crypto get info_coin => throw _privateConstructorUsedError;
  @override
  double get portfolio_value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoinStateCopyWith<_CoinState> get copyWith =>
      throw _privateConstructorUsedError;
}
