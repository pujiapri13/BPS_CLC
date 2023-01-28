import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_ketimpangan.dart';
import 'package:http/http.dart' as http;

class RepositoryKetimpangan {
  final _baseURL = 'https://bps-3301-asap.my.id/api/ketimpangan';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiketimpangan) => ModelKetimpangan.fromJson(isiketimpangan))
            .toList();
      }
    } catch (isiinflasi) {
      // ignore: avoid_print
      print(isiinflasi.toString());
    }
  }
}
