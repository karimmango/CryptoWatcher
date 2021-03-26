import 'dart:convert' as convert;
import 'package:crypto_watcher/infrastructure/coin_service.dart';
import 'package:crypto_watcher/crypto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class coinRepo {
  final coin_service coinService;
  coinRepo(this.coinService);

  Future<crypto> getCoins(String ids) async {
    final coins = await coinService.getCurrencies(ids);

    return coins[0];
  }
}

final coinRepoProvider = Provider<coinRepo>((ref) {
  final coinService = ref.watch(coinServiceProvider);
  return coinRepo(coinService);
});
