// import 'package:crypto_watcher/crypto.dart';
// import 'package:crypto_watcher/domain/coinRepo.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'coin_state.dart';

// class CoinBloc extends StateNotifier<CoinState> {
//   // ignore: non_constant_identifier_names
//   final coinRepo coin_repo;
//   CoinBloc(this.coin_repo) : super(CoinState.noCoin());

//   Future<void> getCoinPressed(String ids) async {
//     state = CoinState.loading();
//     final crypto coin = await coin_repo.getCoins(ids);
//     print(coin);
//     state = CoinState.hasCoin(coin: coin);
//   }
//   void coinContentChanged(String content) {
//     state = state.;
//   }

// }

// final coinBlocProvider = StateNotifierProvider<CoinBloc>((ref) {
//   // ignore: non_constant_identifier_names
//   final coin_repo = ref.watch(coinRepoProvider);
//   return CoinBloc(coin_repo);
// });
