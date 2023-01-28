import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model_ipm.dart';

class RepositoryIpm {
  final _baseURL = 'https://bps-3301-asap.my.id/api/ipm';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiipm) => modelIpm.fromJson(isiipm))
            .toList();
      }
    } catch (isiipm) {
      // ignore: avoid_print
      print(isiipm.toString());
    }
  }
}
