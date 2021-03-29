import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_watcher/application/coins/coinBloc.dart';
import 'package:crypto_watcher/crypto.dart';
import 'package:crypto_watcher/domain/portfolio.dart';
import 'package:crypto_watcher/infrastructure/coin_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:crypto_watcher/infrastructure/firestore.dart';

class Coin_Repo {
  final FirebaseFirestore firestore;
  final coin_service coinService;

  Coin_Repo(this.firestore, this.coinService);

  Future<void> coinTracked(String username, String coinName) async {
    var doc = firestore.collection('users').doc(username);
    doc.update({
      "CoinsTracked": FieldValue.arrayUnion([coinName])
    });
  }

  Stream<List<portfolio>> getOwnedCoins() async* {
    //var state = useProvider(ownedCoinBlocProvider.state);
    final owned = await getOwned();
    while (true) {
      String ids = owned.keys.join(',');
      final coins = await coinService.getCurrencies(ids);
      var lst = <portfolio>[];
      var sum = 0.0;
      for (int i = 0; i < coins.length; i++) {
        portfolio p = portfolio(
            amount: owned[coins[i].id],
            price: coins[i].price,
            name: coins[i].name);
        lst.add(p);
        sum += p.get_total();
      }
      print(sum);
      //state = state.copyWith(portfolio_value: sum);
      yield lst;
      await Future.delayed(Duration(seconds: 5));
    }
  }

  Future<Map<String, dynamic>> getOwned() {
    return firestore.collection('users').doc('Do1S8nVnMaefj9vS164Y').get().then(
        (value) => Map<String, dynamic>.from(value.data()!)['CoinsOwned']);
  }

  Future<List<dynamic>> getTracked() {
    return firestore.collection('users').doc('Do1S8nVnMaefj9vS164Y').get().then(
        (value) => Map<String, dynamic>.from(value.data()!)['CoinsTracked']);
  }

  Stream<List<crypto>> getTrackedCoins() async* {
    //var state = useProvider(ownedCoinBlocProvider.state);
    final owned = await getTracked();
    while (true) {
      String ids = owned.join(',');
      final coins = await coinService.getCurrencies(ids);
      //state = state.copyWith(portfolio_value: sum);
      yield coins;
      await Future.delayed(Duration(seconds: 4));
    }
  }

  Future<List<dynamic>> getCoins() async {
    var doc = await firestore
        .collection('users')
        .doc('Do1S8nVnMaefj9vS164Y')
        .get()
        .then((value) => Map<String, dynamic>.from(value.data()!));
    //print(doc['CoinsTracked']);
    String ids = doc['CoinsTracked'].join(',');
    //print(ids);
    final coins = coinService.getCurrencies(ids);
    //print(coins.toString());
    return coins;
  }

  Stream<List<crypto>> watchAllCoins() async* {
    var coins = <crypto>[];
    //print('hi');
    var coins2 = await getCoins();
    //print('heree');
    var x = coins2.map((e) => e as crypto);
    //print(coins2.then((value) => value as List<crypto>));
    int i = 0;
    while (i < x.length) {
      coins.add(x.elementAt(i));
      yield coins;
      i++;
    }
  }

//   Stream<List<dynamic>> watchPosts() async* {
//     var x = firestore
//         .collection('users')
//         .doc('Do1S8nVnMaefj9vS164Y')
//         .snapshots()
//         .map((value) =>
//             coinService.getCurrencies(value['CoinsTracked'].join(',')))

//   }
}

//   Stream<List<String>> watchCoins(String username) {
//     var doc = firestore.collection('users').doc(username);
//     List<String> c = doc.get("CoinsTracked") as List<String>;
//     return firestore
//         .collection('posts')
//         .orderBy('created_at', descending: true)
//         .limit(10)
//         .snapshots()
//         .map((snapshot) => snapshot.docs
//             .map((doc) => Post(
//                   authorName: doc['author_name'],
//                   content: doc['content'],
//                 ))
//             .toList());
//   }
// }

final coinRepoProvider = Provider<Coin_Repo>((ref) {
  final firestore = ref.watch(firestoreProvider);
  final coinsService = ref.watch(coinServiceProvider);
  return Coin_Repo(firestore, coinsService);
});

final coinsStreamProvider = StreamProvider<List<crypto>>((ref) {
  final coinsRepo = ref.watch(coinRepoProvider);
  return coinsRepo.getTrackedCoins();
});

final ownedCoinsStreamProvider = StreamProvider<List<portfolio>>((ref) {
  final ownedCoinsRepo = ref.watch(coinRepoProvider);
  return ownedCoinsRepo.getOwnedCoins();
});
