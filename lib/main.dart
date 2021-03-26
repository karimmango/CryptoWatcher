import 'dart:convert';

import 'package:crypto_watcher/analysis.dart';
import 'package:crypto_watcher/as.dart';
import 'package:crypto_watcher/coin_info.dart';
import 'package:crypto_watcher/homepage.dart';
import 'package:crypto_watcher/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:yeet/yeet.dart';
import 'package:http/http.dart' as http;

import 'homepage.dart';

void main() async {
  runApp(ProviderScope(child: MyApp()));
}

final yeetProvider = Provider<Yeet>((ref) {
  return Yeet(
    children: [
      Yeet(
        path: '/',
        builder: (_, __) => AuthView(),
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
