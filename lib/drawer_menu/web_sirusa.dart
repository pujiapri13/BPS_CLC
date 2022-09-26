// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebSirusa extends StatefulWidget {
  const WebSirusa({Key? key}) : super(key: key);

  @override
  State<WebSirusa> createState() => _WebSirusaState();
}

class _WebSirusaState extends State<WebSirusa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIRUSA'),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(
            child: Icon(
              BackIcons.circle_arrow,
              size: 40,
            ),
          ),
        ),
      ),
      body: const WebView(
        initialUrl: "https://sirusa.bps.go.id/sirusa/index.php/site/index",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
