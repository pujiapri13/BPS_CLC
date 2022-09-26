import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabelPerumahan extends StatefulWidget {
  const TabelPerumahan({super.key});

  @override
  State<TabelPerumahan> createState() => _TabelPerumahanState();
}

class _TabelPerumahanState extends State<TabelPerumahan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabel Perumahan'),
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
        initialUrl: "https://cilacapkab.bps.go.id/subject/29/perumahan-housing.html#subjekViewTab3",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}