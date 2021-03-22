import 'package:hooks_riverpod/hooks_riverpod.dart';

class Coin {
  String name;
  double price;
  double gain;
  String path;

  Coin(this.name, this.price, this.gain, this.path);

  String getPath() {
    return path;
  }
}

// ignore: camel_case_types
abstract class coinRepository {
  Future<List<Coin>> getAllFollowedCoins();
  Stream<List<Coin>> watchAllCoins();
}

class CoinRepository implements coinRepository {
  @override
  Future<List<Coin>> getAllFollowedCoins() async {
    await Future.delayed(Duration(seconds: 0));
    return [
      Coin('Bitcoin', 60000.0, 10.2, 'assets/images/bitcoin.png'),
      Coin('Ethereum', 1850.0, 9.6, 'assets/images/ethereum.png'),
      Coin('Cardano', 1.3, 24.5, 'assets/images/cardano.png'),
      Coin('Polkadot', 36.5, 7.3, 'assets/images/polkadot.png'),
      Coin('Nimbus Governance Token', 46.5, 35.8, 'assets/images/gnbu.png'),
    ];
  }

  @override
  Stream<List<Coin>> watchAllCoins() async* {
    var coins = <Coin>[];
    List<Coin> coins2 = [
      Coin('Bitcoin', 60000.0, 10.2, 'assets/images/bitcoin.png'),
      Coin('Ethereum', 1850.0, 9.6, 'assets/images/ethereum.png'),
      Coin('Cardano', 1.3, 24.5, 'assets/images/cardano.png'),
      Coin('Polkadot', 36.5, 7.3, 'assets/images/polkadot.png'),
      Coin('Nimbus Governance Token', 46.5, 35.8, 'assets/images/gnbu.png'),
    ];
    int i = 0;
    while (i < coins2.length) {
      await Future.delayed(Duration(seconds: 2));
      coins.add(coins2[i]);
      yield coins;
      i++;
    }
  }
}

final coinRepositoryProvider = Provider<coinRepository>((ref) {
  return CoinRepository();
});
