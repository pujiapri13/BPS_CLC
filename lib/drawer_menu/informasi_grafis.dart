// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

class informasiGrafis extends StatefulWidget {
  const informasiGrafis({Key? key}) : super(key: key);

  @override
  State<informasiGrafis> createState() => _informasiGrafisState();
}

class _informasiGrafisState extends State<informasiGrafis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Grafis'),
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
        initialUrl: "https://cilacapkab.bps.go.id/galery.html",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
