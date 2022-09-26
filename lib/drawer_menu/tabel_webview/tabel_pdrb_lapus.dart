import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabelPdrbLapUs extends StatefulWidget {
  const TabelPdrbLapUs({super.key});

  @override
  State<TabelPdrbLapUs> createState() => _TabelPdrbLapUsState();
}

class _TabelPdrbLapUsState extends State<TabelPdrbLapUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabel PDRB Lapangan Usaha'),
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
        initialUrl:
            "https://cilacapkab.bps.go.id/subject/52/produk-domestik-regional-bruto-menurut-lapangan-usaha.html#subjekViewTab3",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
