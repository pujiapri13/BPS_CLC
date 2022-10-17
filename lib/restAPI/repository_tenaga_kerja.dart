import 'dart:convert';
import 'model_tenaga_kerja.dart';
import 'package:http/http.dart' as http;

class RepositoryTenagaKerja {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/tenagakerja/';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['Tenaga Kerja'] as List)
            .map((isitenagakerja) => TenagaKerja.fromJson(isitenagakerja))
            .toList();
      }
      // ignore: empty_catches
    } catch (isitenagakerja) {}
  }
}
