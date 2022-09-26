import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_laju_pertumbuhan_pdrb.dart';
import 'package:http/http.dart' as http;

class RepositoryLPPdrb {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/lajupdrb/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['PDRB'] as List)
            .map((isipdrb) => LajuPdrb.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}
