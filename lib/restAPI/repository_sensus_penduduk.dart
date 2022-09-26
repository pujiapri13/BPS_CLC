import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_sensus_penduduk.dart';
import 'package:http/http.dart' as http;

class RepositorySensusPenduduk {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/penduduk/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['Penduduk'] as List)
            .map((isisensus) => SensusPenduduk.fromJson(isisensus))
            .toList();
      }
    } catch (isisensus) {
      // ignore: avoid_print
      print(isisensus.toString());
    }
  }
}
