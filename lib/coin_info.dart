import 'package:crypto_watcher/application/coins/coinBloc.dart';
import 'package:flutter/material.dart';
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
          title: Text(
              'Crypto Watcher App                  Your Holdings: \$60,000'),
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
                    Text('here'),
                    FeedWidget(this.id),
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

class FeedWidget extends HookWidget {
  final String id;

  FeedWidget(this.id);
  @override
  Widget build(BuildContext context) {
    final coinBloc = useProvider(coinBlocProvider);
    final state = useProvider(coinBlocProvider.state);
    final listOfCoins = state.coins.toList();
    coinBloc.getCoinInfo(this.id);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Tasdfasdfsadfasdfsadfsadfsfaadafafdsfaafsd',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Column(children: [CoinWidget(coin: state.info_coin)]),
    ]);
  }
}

const horizontalPadding = SizedBox(width: 16);

// class CoinInfoWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Bitcoin details',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 16),
//         CoinWidget(
//           coin: state.info_coin,
//         ),
//         Text(
//           'Bitcoin price chart',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         Image.asset('assets/images/bit.png'),
//       ],
//     );
//   }
// }

class CoinWidget extends HookWidget {
  final crypto coin;

  const CoinWidget({
    required this.coin,
  });

  @override
  Widget build(BuildContext context) {
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