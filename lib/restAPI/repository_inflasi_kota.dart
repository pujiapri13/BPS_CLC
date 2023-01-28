import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_inflasi_kota.dart';
import 'package:http/http.dart' as http;

class RepositoryInflasiKota {
  final _baseURL = 'https://bps-3301-asap.my.id/api/inflasi-kota';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiinflasikota) => ModelInflasiKota.fromJson(isiinflasikota))
            .toList();
      }
    } catch (isiinflasi) {
      // ignore: avoid_print
      print(isiinflasi.toString());
    }
  }
}
