import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_watcher/application/coins/coinBloc.dart';
import 'package:crypto_watcher/crypto.dart';
import 'package:crypto_watcher/domain/portfolio.dart';
import 'package:crypto_watcher/infrastructure/coin_service.dart';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:crypto_watcher/infrastructure/firestore.dart';
import 'package:rxdart/rxdart.dart';

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

  Future<void> addCoinOwned(
      String username, String coinName, String amount) async {
    var doc = firestore.collection('users').doc(username);
    doc.update({
      "CoinsOwned": {
        ...(await doc.get())['CoinsOwned'],
        coinName: amount,
      }
    });
  }

  Stream<List<portfolio>> getOwnedCoins() {
    //var state = useProvider(ownedCoinBlocProvider.state);
    final s = Rx.merge([
      watchOwned(),
      Stream.periodic(Duration(seconds: 5), (_) => {'event': 'check'}),
    ]);
    Map<String, dynamic>? owned;
    return s.asyncExpand((event) async* {
      if (event['event'] == 'check' && owned != null) {
        print(event);
        String ids = owned!.keys.join(',');
        final coins = await coinService.getCurrencies(ids);
        var lst = <portfolio>[];
        var sum = 0.0;
        for (int i = 0; i < coins.length; i++) {
          portfolio p = portfolio(
              amount: owned![coins[i].id],
              price: coins[i].price,
              name: coins[i].name);
          lst.add(p);
          sum += p.get_total();
        }
        print(sum);
        //state = state.copyWith(portfolio_value: sum);
        yield lst;
      } else if (event['event'] != 'check') {
        print(event);
        owned = event;
      }
    });
  }

  Future<Map<String, dynamic>> getOwned() {
    return firestore.collection('users').doc('Do1S8nVnMaefj9vS164Y').get().then(
        (value) => Map<String, dynamic>.from(value.data()!)['CoinsOwned']);
  }

  Stream<Map<String, dynamic>> watchOwned() {
    return firestore
        .collection('users')
        .doc('Do1S8nVnMaefj9vS164Y')
        .snapshots()
        .map((value) => Map<String, dynamic>.from(value.data()!)['CoinsOwned']);
  }

  Stream<List<dynamic>> watchTracked() {
    return firestore
        .collection('users')
        .doc('Do1S8nVnMaefj9vS164Y')
        .snapshots()
        .map((value) =>
            Map<String, dynamic>.from(value.data()!)['CoinsTracked']);
  }

  Future<List<crypto>> getTracked() {
    return firestore.collection('users').doc('Do1S8nVnMaefj9vS164Y').get().then(
        (value) => Map<String, dynamic>.from(value.data()!)['CoinsTracked']);
  }

  Stream<List<crypto>> getTrackedCoins() {
    final s = Rx.merge<Either<Unit, List<dynamic>>>([
      watchTracked().map((event) => right(event)),
      Stream.periodic(Duration(seconds: 5), (_) => left(unit)),
    ]);
    var owned;
    return s.asyncExpand((event) {
      return event.fold<Stream<List<crypto>>>(
        (l) async* {
          if (owned != null) {
            print('checking event!');
            String ids = owned!.join(',');
            final coins = await coinService.getCurrencies(ids);
            //state = state.copyWith(portfolio_value: sum);
            yield coins;
          }
        },
        (r) async* {
          owned = r;
        },
      );
    });
    //var state = useProvider(ownedCoinBlocProvider.state);
    // final owned = await getTracked();
    // while (true) {
    //   String ids = owned.join(',');
    //   final coins = await coinService.getCurrencies(ids);
    //   //state = state.copyWith(portfolio_value: sum);
    //   yield coins;
    //   await Future.delayed(Duration(seconds: 15));
    // }
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

  Future<crypto> getCoinInfo(String ids) async {
    //print(ids);
    final coins = await coinService.getCurrencies(ids);
    //print(coins.toString());
    return coins[0];
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
}

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
