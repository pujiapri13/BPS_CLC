import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Publikasi extends StatefulWidget {
  const Publikasi({Key? key}) : super(key: key);

  @override
  State<Publikasi> createState() => _PublikasiState();
}

class _PublikasiState extends State<Publikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publikasi'),
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
        initialUrl: "https://cilacapkab.bps.go.id/publication.html",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
