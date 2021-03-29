// import 'package:crypto_watcher/crypto.dart';
// import 'package:crypto_watcher/domain/db_coin_repo.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'coin_state.dart';
// import 'domain/coinRepo.dart';

// class Coin_Bloc extends StateNotifier<CoinState> {
//   final Coin_Repo coin_reposi;

//   Coin_Bloc(List<crypto> coins, this.coin_reposi)
//       : super(CoinState(coins: coins, newCoin: ''));

//   void addCoinContentChanged(String content) {
//     state = state.copyWith(newCoin: content);
//   }

//   void postButtonPressed() {
//     coin_reposi.coinTracked('user', state.newCoin);
//   }
// }

// final postsStreamProvider = StreamProvider<List<crypto>>((ref) {
//   final coin_reposi = ref.watch(coinRepoProvider);
//   // return coin_repo.watchPosts();
//   return;
// });

// final postsBlocProvider = StateNotifierProvider<PostsBloc>((ref) {
//   final postsRepo = ref.watch(postsRepoProvider);
//   final posts = ref.watch(postsStreamProvider);
//   return posts.when(
//     data: (data) {
//       print(data);
//       return PostsBloc(data, postsRepo);
//     },
//     loading: () => PostsBloc([], postsRepo),
//     error: (e, __) {
//       print(e);
//       return PostsBloc([], postsRepo);
//     },
//   );
// });
