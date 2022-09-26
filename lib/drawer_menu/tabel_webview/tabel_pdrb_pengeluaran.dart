import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabelPdrbPengeluaran extends StatefulWidget {
  const TabelPdrbPengeluaran({super.key});

  @override
  State<TabelPdrbPengeluaran> createState() => _TabelPdrbPengeluaranState();
}

class _TabelPdrbPengeluaranState extends State<TabelPdrbPengeluaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabel PDRB Pengeluaran'),
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
        initialUrl: "https://cilacapkab.bps.go.id/subject/154/produk-domestik-regional-bruto-menurut-pengeluaran.html#subjekViewTab3",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}