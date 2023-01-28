import 'dart:convert';
import 'model_sensus.dart';
import 'package:http/http.dart' as http;

class RepositorySensus {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiipm) => Sensus.fromJson(isiipm))
            .toList();
      }
    } catch (isiipm) {
      // ignore: avoid_print
      print(isiipm.toString());
    }
  }
}
