import 'dart:convert';

import 'package:crypto_watcher/analysis.dart';
import 'package:crypto_watcher/coin.dart';
import 'package:crypto_watcher/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:yeet/yeet.dart';
import 'package:http/http.dart' as http;

import 'homepage.dart';

void main() async {
  Map<String, dynamic> currencies = await getCurrencies();
  print(currencies['data']['1']);
  runApp(ProviderScope(child: MyApp()));
}

Future<Map<String, dynamic>> getCurrencies() async {
  String _apiURL =
      "https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?id=1,2";
  http.Response response = await http.get(Uri.parse(_apiURL),
      headers: {"X-CMC_PRO_API_KEY": "8598c68c-82a3-4948-8906-f75a0f275cc0"});
  return json.decode(response.body);
}

final yeetProvider = Provider<Yeet>((ref) {
  return Yeet(
    children: [
      Yeet(
        path: '/',
        builder: (_, __) => homepage(),
        children: [
          Yeet(
            path: '/coin',
            builder: (_, __) => coin(),
          ),
          Yeet(path: '/analysis', builder: (_, __) => WebPageView()),
        ],
      ),
    ],
  );
});

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final yeet = useProvider(yeetProvider);
    return MaterialApp.router(
      title: 'Crypto Watcher',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routeInformationParser: YeetInformationParser(),
      routerDelegate: YeeterDelegate(yeet: yeet),
    );
  }
}
