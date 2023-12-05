import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebBrowser(),
    );
  }
}

class WebBrowser extends StatefulWidget {
  @override
  _WebBrowserState createState() => _WebBrowserState();
}

class _WebBrowserState extends State<WebBrowser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Web Browser'),
      ),
      body: WebView(
        initialUrl: 'https://youtube.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
