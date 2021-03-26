import 'dart:convert' as convert;

import 'package:crypto_watcher/crypto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

class coin_service {
  Future<List<dynamic>> getCurrencies(String ids) async {
    String _apiURL =
        "https://api.nomics.com/v1/currencies/ticker?key=e825f16c7091cc7691064f37703f9fe3&ids=" +
            ids +
            "&interval=1d,30d";
    http.Response response = await http.get(Uri.parse(_apiURL));
    // headers: {"X-CoinAPI-Key": "A25B2FFD-476C-4491-AB49-F4C9E08D983D"});

    //print(coins[0].toString());
    List<crypto> coins = List<crypto>.from(convert.json
        .decode(response.body)
        .map((model) => crypto.fromJson(model)));
    //print(coins[0]);
    return coins;
  }
}
//Map<String, dynamic> currencies = await getCurrencies();
//  print(currencies['data']['1']);

final coinServiceProvider = Provider((_) => coin_service());
