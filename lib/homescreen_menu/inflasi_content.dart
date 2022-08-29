// ignore_for_file: unused_local_variable, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class inflasiContent extends StatefulWidget {
  const inflasiContent({Key? key}) : super(key: key);

  @override
  State<inflasiContent> createState() => _inflasiContentState();
}

class _inflasiContentState extends State<inflasiContent> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          alignment: Alignment.centerLeft,
          height: ScreenHeight * 0.10,
          child: const Text(
            'INFLASI',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
      body: const Text('isi inflasi'),
    );
  }
}
