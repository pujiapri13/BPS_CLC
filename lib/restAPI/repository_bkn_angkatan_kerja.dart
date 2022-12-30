import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_bkn_angkatan_kerja.dart';
import 'package:http/http.dart' as http;

class RepositoryBknAngkatanKerja {
  final _baseURL = 'https://bps-asap.my.id/api/bkn-ang-kerja';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isibknangkerja) => ModelBknAngkatanKerja.fromJson(isibknangkerja))
            .toList();
      }
    } catch (isibknangkerja) {
      // ignore: avoid_print
      print(isibknangkerja.toString());
    }
  }
}
