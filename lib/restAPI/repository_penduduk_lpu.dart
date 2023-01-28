import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_penduduk_lpu.dart';
import 'package:http/http.dart' as http;

class RepositoryPendudukLpu {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pddk-kerja-lpu';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendudukumur) => PendudukLpu.fromJson(isipendudukumur))
            .toList();
      }
    } catch (isipendudukumur) {
      // ignore: avoid_print
      print(isipendudukumur.toString());
    }
  }
}
