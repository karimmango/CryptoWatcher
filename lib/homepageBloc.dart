import 'package:crypto_watcher/coinRepository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'coinRepository.dart';

class HomePageState {
  final bool isLoading;
  final List<Coin> coins;

  HomePageState({
    required this.isLoading,
    required this.coins,
  });
}

class HomePageBloc extends StateNotifier<HomePageState> {
  coinRepository coin_repository;

  HomePageBloc({
    required this.coin_repository,
  }) : super(HomePageState(
          isLoading: true,
          coins: [],
        )) {
    coin_repository.watchAllCoins().listen((coins) {
      state = HomePageState(
        isLoading: false,
        coins: coins,
      );
    });
  }
}

final homePageBlocProvider = StateNotifierProvider<HomePageBloc>((ref) {
  final coin_repository = ref.watch(coinRepositoryProvider);
  return HomePageBloc(coin_repository: coin_repository);
});
