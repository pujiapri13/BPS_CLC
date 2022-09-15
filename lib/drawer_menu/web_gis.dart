import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webGis extends StatefulWidget {
  const webGis({Key? key}) : super(key: key);

  @override
  State<webGis> createState() => _webGisState();
}

class _webGisState extends State<webGis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WEB GIS'),
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
        initialUrl: "https://s.bps.go.id/gissp_3301",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
