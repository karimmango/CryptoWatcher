import 'package:flutter/material.dart';

class coin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Crypto Watcher App                                           Your Holdings: \$60,000'),
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
                  CoinInfoWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

const horizontalPadding = SizedBox(width: 16);

class CoinInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bitcoin details',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        CoinWidget(),
        Text(
          'Bitcoin price chart',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Image.asset('assets/images/bit.png'),
      ],
    );
  }
}

class CoinWidget extends StatelessWidget {
  const CoinWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1000),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              SizedBox(height: 16),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 2000),
                child: Row(
                  children: [
                    horizontalPadding,
                    CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/bitcoin.png'),
                        radius: 16),
                    horizontalPadding,
                    Text('Bitcoin'),
                    horizontalPadding,
                    Text('+28% 24h'),
                    horizontalPadding,
                    Text('Market Cap \$1,084,282,875,322   +4.90%'),
                    horizontalPadding,
                  ],
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500),
                child: Row(children: [
                  Text(
                      'The live Bitcoin price today is \$58,118.00 USD with a 24-hour trading volume of \$57,111,977,354 USD. \n Bitcoin is up 4.90% in the last 24 hours. '),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
