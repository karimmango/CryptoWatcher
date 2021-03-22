import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageView extends StatefulWidget {
  @override
  _WebPageViewState createState() => _WebPageViewState();
}

class _WebPageViewState extends State<WebPageView> {
  Completer<WebViewController> _controler = Completer<WebViewController>();

  Factory<ZoomPageTransitionsBuilder> zoom =
      Factory<ZoomPageTransitionsBuilder>(() => ZoomPageTransitionsBuilder());
  var gestureSet = Set.from([
    Factory<ZoomPageTransitionsBuilder>(() => ZoomPageTransitionsBuilder())
  ]);
  @override
  Widget build(BuildContext context) {
    return WebView(
        initialUrl: "https://tradingview.com/",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controler.complete(webViewController);
        });
  }
}
