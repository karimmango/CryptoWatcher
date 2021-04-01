import 'package:crypto_watcher/application/coins/coinBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:yeet/yeet.dart';

import 'crypto.dart';

class coin_info extends HookWidget {
  String id;
  coin_info(this.id);
  @override
  Widget build(BuildContext context) {
    final coinBloc = useProvider(coinBlocProvider);
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
                    FeedWidget(this.id),
                  ],
                ),
              ),
            );
          },
        ));
  }
}

class FeedWidget extends HookWidget {
  final String id;

  FeedWidget(this.id);
  @override
  Widget build(BuildContext context) {
    final coinBloc = useProvider(coinBlocProvider);
    final state = useProvider(coinBlocProvider.state);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Details about the coin',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Column(children: [
        CoinWidget(
            coin: (state.coins as List<crypto>)
                .firstWhere((element) => element.id == id))
      ]),
    ]);
  }
}

const horizontalPadding = SizedBox(width: 16);

class CoinWidget extends HookWidget {
  final crypto coin;

  const CoinWidget({
    required this.coin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            elevation: 5,
            child: new ListTile(title: Text("Coin name: " + coin.name))),
        Card(
            elevation: 5,
            child: new ListTile(title: Text("Symbol: " + coin.symbol))),
        Card(elevation: 5, child: new ListTile(title: Text('\$' + coin.price))),
        Card(
            elevation: 5,
            child: new ListTile(
                title: Text("1 day price change: \$" + coin.price_change))),
        Card(
            elevation: 5,
            child: new ListTile(
                title: Text("1 day change: %" + coin.price_change_pct))),
        Card(
            elevation: 5,
            child: new ListTile(
                title: Text("Circulating supply: " + coin.circulating_supply))),
        Card(
            elevation: 5,
            child: new ListTile(title: Text("Market cap: " + coin.market_cap))),
      ],
    );
  }
}
