import 'dart:convert';
import 'model_distribusi_pdrb.dart';
import 'package:http/http.dart' as http;

class RepositoryDistPdrb {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/distpdrb/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['PDRB'] as List)
            .map((isipdrb) => DistPdrb.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}
