import 'dart:convert';
import 'model_pertumbuhan_ekonomi.dart';
import 'package:http/http.dart' as http;

class RepositoryPertumbuhanEkonomi {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pertumbuhan-ekonomi';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipertumbuhanekonomi) =>
                PertumbuhanEkonomi.fromJson(isipertumbuhanekonomi))
            .toList();
      }
    } catch (isipertumbuhanekonomi) {
      // ignore: avoid_print
      print(isipertumbuhanekonomi.toString());
    }
  }
}
