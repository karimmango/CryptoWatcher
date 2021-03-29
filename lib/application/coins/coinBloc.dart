import 'package:crypto_watcher/coin_state.dart';
import 'package:crypto_watcher/crypto.dart';

import 'package:crypto_watcher/domain/db_coin_repo.dart';
import 'package:crypto_watcher/domain/portfolio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CoinBloc extends StateNotifier<CoinState> {
  final Coin_Repo coin_repo;

  CoinBloc(List<dynamic> coins, this.coin_repo)
      : super(CoinState(
            coins: coins,
            newCoin: '',
            info_coin: crypto(
              circulating_supply: '',
              id: '',
              //logo_url: '',
              //max_supply: '',
              name: '',
              price: '',
              symbol: '',
            ),
            portfolio_value: 0));

  double portfolioValue() {
    final coins = state.coins;
    if (coins is List<portfolio>) {
      return coins
          .map((e) => e.get_total())
          .reduce((value, element) => value + element);
    } else {
      return 0;
    }
  }

  void coinContentChanged(String content) {
    state = state.copyWith(newCoin: content);
  }

  void portfolioValueChanged() async {
    // var x = await coin_repo.getPortfolioValue();
    // state = state.copyWith(portfolio_value: x);
  }

  void addCoinButtonPressed(String content) {
    state = state.copyWith(newCoin: content);
    coin_repo.coinTracked('Do1S8nVnMaefj9vS164Y', state.newCoin);
  }

  void getCoinInfo(String ids) async {
    var x = await coin_repo.getCoinInfo(ids);
    print(x);
    state = state.copyWith(info_coin: x);
    print(state.info_coin);
  }
}

// final coinStreamProvider = StreamProvider<List<crypto>>((ref) {
//   final coin_Repos = ref.watch(coinRepoProvider);
//   return coin_Repos.watchPosts();
// });

final coinsStreamProvider = StreamProvider<List<crypto>>((ref) {
  final coinsRepo = ref.watch(coinRepoProvider);
  return coinsRepo.getTrackedCoins();
});

// final ownedCoinsStreamProvider = StreamProvider<List<dynamic>>((ref) {
//   final coinsRepo = ref.watch(coinRepoProvider);
//   return coinsRepo.watchAllOwnedCoins();
// });

final coinBlocProvider = StateNotifierProvider<CoinBloc>((ref) {
  final coinsRepo = ref.watch(coinRepoProvider);
  final coins = ref.watch(coinsStreamProvider);
  return coins.when(
    data: (data) {
      print(data);
      return CoinBloc(data, coinsRepo);
    },
    loading: () => CoinBloc([], coinsRepo),
    error: (e, __) {
      print(e);
      return CoinBloc([], coinsRepo);
    },
  );
});

final ownedCoinBlocProvider = StateNotifierProvider<CoinBloc>((ref) {
  final coinsRepo = ref.watch(coinRepoProvider);
  final coins = ref.watch(ownedCoinsStreamProvider);
  return coins.when(
    data: (data) {
      print(data);
      return CoinBloc(data, coinsRepo);
    },
    loading: () => CoinBloc([], coinsRepo),
    error: (e, __) {
      print(e);
      return CoinBloc([], coinsRepo);
    },
  );
});
