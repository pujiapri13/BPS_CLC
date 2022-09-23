// ignore_for_file: camel_case_types

import 'package:bps_cilacap/repository_ipm.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';

class kemiskinanContent extends StatefulWidget {
  const kemiskinanContent({Key? key}) : super(key: key);

  @override
  State<kemiskinanContent> createState() => _kemiskinanContentState();
}

class _kemiskinanContentState extends State<kemiskinanContent> {
  RepositoryIpm repositoryipm = RepositoryIpm();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('KEMISKINAN'),
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
      body: FutureBuilder(
        future: repositoryipm.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.teal,
                  width: screenWidth,
                  height: screenHeight,
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text('error');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
