import 'dart:convert';
import 'model_kemiskinan.dart';
import 'package:http/http.dart' as http;

class RepositoryKemiskinan {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/kemiskinan/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['Kemiskinan'] as List)
            .map((isikemiskinan) => ModelKemiskinan.fromJson(isikemiskinan))
            .toList();
      }
    } catch (isikemiskinan) {
      // ignore: avoid_print
      print(isikemiskinan.toString());
    }
  }
}
