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

  _CoinState call({required List<crypto> coins, required String newCoin}) {
    return _CoinState(
      coins: coins,
      newCoin: newCoin,
    );
  }
}

/// @nodoc
const $CoinState = _$CoinStateTearOff();

/// @nodoc
mixin _$CoinState {
  List<crypto> get coins => throw _privateConstructorUsedError;
  String get newCoin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinStateCopyWith<CoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinStateCopyWith<$Res> {
  factory $CoinStateCopyWith(CoinState value, $Res Function(CoinState) then) =
      _$CoinStateCopyWithImpl<$Res>;
  $Res call({List<crypto> coins, String newCoin});
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
  }) {
    return _then(_value.copyWith(
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<crypto>,
      newCoin: newCoin == freezed
          ? _value.newCoin
          : newCoin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CoinStateCopyWith<$Res> implements $CoinStateCopyWith<$Res> {
  factory _$CoinStateCopyWith(
          _CoinState value, $Res Function(_CoinState) then) =
      __$CoinStateCopyWithImpl<$Res>;
  @override
  $Res call({List<crypto> coins, String newCoin});
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
  }) {
    return _then(_CoinState(
      coins: coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<crypto>,
      newCoin: newCoin == freezed
          ? _value.newCoin
          : newCoin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_CoinState implements _CoinState {
  const _$_CoinState({required this.coins, required this.newCoin});

  @override
  final List<crypto> coins;
  @override
  final String newCoin;

  @override
  String toString() {
    return 'CoinState(coins: $coins, newCoin: $newCoin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoinState &&
            (identical(other.coins, coins) ||
                const DeepCollectionEquality().equals(other.coins, coins)) &&
            (identical(other.newCoin, newCoin) ||
                const DeepCollectionEquality().equals(other.newCoin, newCoin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coins) ^
      const DeepCollectionEquality().hash(newCoin);

  @JsonKey(ignore: true)
  @override
  _$CoinStateCopyWith<_CoinState> get copyWith =>
      __$CoinStateCopyWithImpl<_CoinState>(this, _$identity);
}

abstract class _CoinState implements CoinState {
  const factory _CoinState(
      {required List<crypto> coins, required String newCoin}) = _$_CoinState;

  @override
  List<crypto> get coins => throw _privateConstructorUsedError;
  @override
  String get newCoin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoinStateCopyWith<_CoinState> get copyWith =>
      throw _privateConstructorUsedError;
}
