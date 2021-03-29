import 'dart:async';

import 'package:crypto_watcher/crypto.dart';

import 'package:crypto_watcher/application/coins/coinBloc.dart';
import 'package:crypto_watcher/domain/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';

class owned_coins extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final coinBloc = useProvider(ownedCoinBlocProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text('Crypto Watcher App                  Your Holdings: ' +
              coinBloc.portfolioValue().toString()),
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
    final state = useProvider(ownedCoinBlocProvider.state);
    final coinBloc = useProvider(ownedCoinBlocProvider);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 16),
      Text(
        'Latest Price Action for Coins You Own',
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
          children: state.coins.map((e) => CoinWidget(port: e)).toList(),
        ),
    ]);
  }
}

class CoinWidget extends HookWidget {
  final portfolio port;

  const CoinWidget({
    required this.port,
  });

  @override
  Widget build(BuildContext context) {
    final state = useProvider(ownedCoinBlocProvider.state);
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 2000),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: InkWell(
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  horizontalPadding,
                  Text(port.name.toString()),
                  Spacer(),
                  Text('\$' + port.price.toString()),
                  Spacer(),
                  Text('Your holdings worth: \$' + port.get_total().toString()),
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
