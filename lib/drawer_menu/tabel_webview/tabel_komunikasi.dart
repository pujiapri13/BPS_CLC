import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabelKomunikasi extends StatefulWidget {
  const TabelKomunikasi({super.key});

  @override
  State<TabelKomunikasi> createState() => _TabelKomunikasiState();
}

class _TabelKomunikasiState extends State<TabelKomunikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabel Komunikasi'),
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
        initialUrl: "https://cilacapkab.bps.go.id/subject/2/komunikasi-communication.html#subjekViewTab3",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}