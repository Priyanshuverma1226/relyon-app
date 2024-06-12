import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resuzoom',
      debugShowCheckedModeBanner: false,
      home: MyWebView(),
    );
  }
}

class MyWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
        preferredSize: Size.fromHeight(7.0), // Set the height of the AppBar
        child: AppBar(
          backgroundColor: Color(0x74bfb0), // Background color of the AppBar
        ),
      ),
      body: WebView(
        initialUrl: 'https://www.resuzoom.com/', // URL of the web page you want to display
        javascriptMode: JavascriptMode.unrestricted, // Enable JavaScript (optional)
      ),
    );
  }
}
