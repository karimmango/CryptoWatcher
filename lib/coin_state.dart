import 'package:crypto_watcher/coin_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'crypto.dart';
part 'coin_state.freezed.dart';

@freezed
abstract class CoinState with _$CoinState {
  const factory CoinState(
      {required List<dynamic> coins,
      required String newCoin,
      // ignore: non_constant_identifier_names
      required crypto info_coin,
      required double portfolio_value}) = _CoinState;
}
