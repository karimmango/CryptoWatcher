import 'dart:async';
import 'package:crypto_watcher/crypto.dart';
import 'package:crypto_watcher/application/coins/coinBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';

// ignore: camel_case_types
class homepage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final ownedCoinBloc = useProvider(coinBlocProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text('Crypto Watcher App'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 36),
                    FeedWidget(),
                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Your Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Charting and Analysis',
            ),
          ],
          selectedItemColor: Colors.amber[800],
        ));
  }
}

const horizontalPadding = SizedBox(width: 16);

class FeedWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final coinBloc = useProvider(coinBlocProvider);
    final state = useProvider(coinBlocProvider.state);
    final listOfCoins = state.coins.toList();
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Total Cryptocurrency Market Cap',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 16),
      ElevatedButton(
        onPressed: () => context.yeet('/portfolio'),
        child: Text('to'),
      ),
      Text(
        'Latest Price Action for Coins You are Tracking',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 16),
      TextField(
        onChanged: (value) {
          coinBloc.coinContentChanged(value);
        },
        decoration:
            InputDecoration(hintText: 'Search for a coin by its symbol'),
      ),
      IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            coinBloc.addCoinButtonPressed(state.newCoin);
          }),
      if (state.coins.isEmpty)
        CircularProgressIndicator()
      else
        Column(
          children: state.coins.map((e) => CoinWidget(coin: e)).toList(),
        ),
    ]);
  }
}

class CoinWidget extends HookWidget {
  final crypto coin;

  const CoinWidget({
    required this.coin,
  });

  @override
  Widget build(BuildContext context) {
    final state = useProvider(coinBlocProvider.state);
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 2000),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: InkWell(
          onTap: () => {
            context.yeet(
              '/info/' + coin.id,
            ),
          },
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  horizontalPadding,
                  Text(coin.name),
                  Spacer(),
                  Text('\$' + coin.price),
                  Spacer(),
                  Text(coin.symbol),
                  horizontalPadding,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
