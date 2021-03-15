import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String> cryptos = [];
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Crypto Watcher                             Your holdings value: \$60,000'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              itemExtent: 75,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Add Coins to Your watchlist   '),
                    Expanded(
                      child: TextField(
                        controller: textEditingController,
                      ),
                    ),
                    SizedBox(width: 25),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          cryptos.add(textEditingController.text);
                        });
                      },
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
                for (final crypto in cryptos) CryptoWidget(name: crypto),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CryptoWidget extends StatefulWidget {
  final String name;

  CryptoWidget({
    required this.name,
  });

  @override
  _CryptoWidgetState createState() => _CryptoWidgetState();
}

class _CryptoWidgetState extends State<CryptoWidget> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.name,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
