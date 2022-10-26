import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_inflasi.dart';
import 'package:http/http.dart' as http;

class RepositoryInflasi {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/inflasi/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['Inflasi'] as List)
            .map((isiinflasi) => modelInflasi.fromJson(isiinflasi))
            .toList();
      }
    } catch (isiinflasi) {
      // ignore: avoid_print
      print(isiinflasi.toString());
    }
  }
}