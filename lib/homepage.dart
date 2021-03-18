import 'package:crypto_watcher/coinRepository.dart';
import 'package:flutter/material.dart';

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

class FeedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        StreamBuilder<List<Coin>>(
          stream: CoinRepository().watchAllCoins(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            final data = snapshot.data;
            if (data != null) {
              return Column(
                children: data.map((e) => CoinWidget(coin: e)).toList(),
              );
            }
            return Text('Unexpected Error!');
          },
        )
      ],
    );
  }
}

class CoinWidget extends StatelessWidget {
  final Coin coin;

  const CoinWidget({
    required this.coin,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
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
                  Text(coin.name),
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
