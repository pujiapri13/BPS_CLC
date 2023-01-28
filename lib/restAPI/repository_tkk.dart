import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_tkk.dart';
import 'package:http/http.dart' as http;

class RepositoryTkk {
  final _baseURL = 'https://bps-3301-asap.my.id/api/tkk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isitkk) => Tkk.fromJson(isitkk))
            .toList();
      }
    } catch (isitkk) {
      // ignore: avoid_print
      print(isitkk.toString());
    }
  }
}
