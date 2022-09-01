import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class BeritaResmiStatistik extends StatefulWidget {
  const BeritaResmiStatistik({Key? key}) : super(key: key);

  @override
  State<BeritaResmiStatistik> createState() => _BeritaResmiStatistikState();
}

class _BeritaResmiStatistikState extends State<BeritaResmiStatistik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita Resmi Statistik'),
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
    );
  }
}