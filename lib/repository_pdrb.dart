import 'dart:convert';
import 'package:bps_cilacap/model_pdrb.dart';
import 'package:http/http.dart' as http;

class RepositoryPdrb {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/pdrb/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['PDRB'] as List)
            .map((isipdrb) => Pdrb.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}
