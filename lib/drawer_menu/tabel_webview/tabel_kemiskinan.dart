import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabelKemiskinan extends StatefulWidget {
  const TabelKemiskinan({super.key});

  @override
  State<TabelKemiskinan> createState() => _TabelKemiskinanState();
}

class _TabelKemiskinanState extends State<TabelKemiskinan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabel Kemiskinan'),
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
        initialUrl: "https://cilacapkab.bps.go.id/subject/23/kemiskinan-poverty.html#subjekViewTab3",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}