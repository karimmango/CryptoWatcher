import 'package:crypto_watcher/coinRepository.dart';
import 'package:crypto_watcher/homepageBloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yeet/yeet.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
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
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
        ));
  }
}

const horizontalPadding = SizedBox(width: 16);

class FeedWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(homePageBlocProvider.state);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Cryptocurrency Market Cap',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Image.asset('assets/images/btc-chart.png'),
        Text(
          'Latest Price Action for Coins You are Tracking',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        if (state.isLoading)
          CircularProgressIndicator()
        else
          Column(
            children: state.coins.map((e) => CoinWidget(coin: e)).toList(),
          ),
      ],
    );
  }
}

class CoinWidget extends HookWidget {
  final Coin coin;

  const CoinWidget({
    required this.coin,
  });

  @override
  Widget build(BuildContext context) {
    final homePageBloc = useProvider(homePageBlocProvider);
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 2000),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              SizedBox(height: 16),
              Row(
                children: [
                  horizontalPadding,
                  CircleAvatar(
                      backgroundImage: AssetImage(coin.path), radius: 16),
                  horizontalPadding,
                  RichText(
                    text: TextSpan(
                      text: coin.name,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.yeet('/coin'),
                    ),
                  ),
                  Spacer(),
                  Text('\$' + coin.price.toString()),
                  Spacer(),
                  Text('+ ' + coin.gain.toString() + '%'),
                  horizontalPadding,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
