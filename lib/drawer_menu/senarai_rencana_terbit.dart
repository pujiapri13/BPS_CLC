import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SenaraiRencanaTerbit extends StatefulWidget {
  const SenaraiRencanaTerbit({Key? key}) : super(key: key);

  @override
  State<SenaraiRencanaTerbit> createState() => _SenaraiRencanaTerbitState();
}

class _SenaraiRencanaTerbitState extends State<SenaraiRencanaTerbit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Senarai Rencana Terbit'),
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
        initialUrl: "https://cilacapkab.bps.go.id/publication/arc#arcTab1.html",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
