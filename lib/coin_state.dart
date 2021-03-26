import 'package:crypto_watcher/coin_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'crypto.dart';
part 'coin_state.freezed.dart';

@freezed
abstract class CoinState with _$CoinState {
  const factory CoinState({
    required List<crypto> coins,
    required String newCoin,
  }) = _CoinState;
}
