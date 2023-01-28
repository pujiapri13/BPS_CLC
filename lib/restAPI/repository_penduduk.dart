import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_penduduk.dart';
import 'package:http/http.dart' as http;

class RepositoryJumlahPenduduk {
  final _baseURL = 'https://bps-3301-asap.my.id/api/penduduk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendudukumur) => JumlahPenduduk.fromJson(isipendudukumur))
            .toList();
      }
    } catch (isipendudukumur) {
      // ignore: avoid_print
      print(isipendudukumur.toString());
    }
  }
}
