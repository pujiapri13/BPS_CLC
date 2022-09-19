// ignore_for_file: unused_local_variable, camel_case_types, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/model.dart';
import 'package:bps_cilacap/repository.dart';
import 'package:flutter/material.dart';

class inflasiContent extends StatefulWidget {
  const inflasiContent({Key? key}) : super(key: key);

  @override
  State<inflasiContent> createState() => _inflasiContentState();
}

class _inflasiContentState extends State<inflasiContent> {
  List listBlog = [];
  Repository repository = Repository();

  // getData() async {
  //   listBlog = await repository.getData();
  //   return listBlog;
  // }

  @override
  void initState() {
    // getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('INFLASI'),
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
        future: repository.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List blog = snapshot.data as List;
            return ListView.builder(
              itemCount: listBlog.hashCode,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blue,
                  width: ScreenWidth,
                  height: ScreenHeight,
                  child: Text(blog[index].tanggal),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return Text('error');
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
