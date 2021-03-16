import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Crypto Watcher App                  Your Holdings: \$60,000'),
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
    );
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
          'Latest Price Action for Coins You are Tracking',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        Image.asset('assets/images/btc-chart.png'),
      ],
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

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
                      backgroundImage: AssetImage('images/bitcoin.png'),
                      radius: 16),
                  horizontalPadding,
                  Text('Bitcoin'),
                  Spacer(),
                  Text('+28% 24h'),
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
