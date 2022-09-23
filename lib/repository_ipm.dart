import 'dart:convert';
import 'package:bps_cilacap/model_ipm.dart';
import 'package:http/http.dart' as http;

class RepositoryIpm {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/ipm/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['IPM'] as List)
            .map((isiipm) => modelIpm.fromJson(isiipm))
            .toList();
      }
    } catch (isiipm) {
      // ignore: avoid_print
      print(isiipm.toString());
    }
  }
}
