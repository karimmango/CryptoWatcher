import 'dart:convert' as convert;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_watcher/crypto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

class coin_service {
  late final FirebaseFirestore firestore;

  Future<List<crypto>> getCurrencies(String ids) async {
    // var doc = firestore
    //     .collection('users')
    //     .doc('Do1S8nVnMaefj9vS164Y')
    //     .get()
    //     .then((value) => Map<String, dynamic>.from(value.data()!));
    // print(doc.toString());
    //String ids = cs.join(',');

    String _apiURL =
        "https://api.nomics.com/v1/currencies/ticker?key=e825f16c7091cc7691064f37703f9fe3&ids=" +
            ids +
            "&interval=1d,30d";
    //print(_apiURL);
    http.Response response = await http.get(Uri.parse(_apiURL));
    // headers: {"X-CoinAPI-Key": "A25B2FFD-476C-4491-AB49-F4C9E08D983D"});
    //print(convert.json.decode(response.body));
    //print(coins[0].toString());
    final coins = List<crypto>.from(convert.json
        .decode(response.body)
        .map((model) => crypto.fromJson(model)));
    //print(coins[0]);

    //print(coins);
    return coins;
  }
}
//Map<String, dynamic> currencies = await getCurrencies();
//  print(currencies['data']['1']);

final coinServiceProvider = Provider((_) => coin_service());
