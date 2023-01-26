import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_penduduk_kecamatan.dart';
import 'package:http/http.dart' as http;

class RepositoryJumlahPendudukKecamatan {
  final _baseURL = 'https://bps-asap.my.id/api/penduduk-kecamatan';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendudukkecamatan) =>
                JumlahPendudukKecamatan.fromJson(isipendudukkecamatan))
            .toList();
      }
    } catch (isipendudukkecamatan) {
      // ignore: avoid_print
      print(isipendudukkecamatan.toString());
    }
  }
}
