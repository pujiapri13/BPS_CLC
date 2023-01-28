import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_tpt.dart';
import 'package:http/http.dart' as http;

class RepositoryTpt {
  final _baseURL = 'https://bps-3301-asap.my.id/api/tpt';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isitpt) => Tpt.fromJson(isitpt))
            .toList();
      }
    } catch (isitpt) {
      // ignore: avoid_print
      print(isitpt.toString());
    }
  }
}
