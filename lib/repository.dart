import 'dart:convert';
import 'package:bps_cilacap/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/pdrb/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['PDRB'] as List).map((e) => Blog.fromJson(e)).toList();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
