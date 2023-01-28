import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_kemiskinan_kota.dart';
import 'package:http/http.dart' as http;

class RepositoryKemiskinanKota {
  final _baseURL = 'https://bps-3301-asap.my.id/api/kemiskinan-kota';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isikemiskinan) => ModelKemiskinanKota.fromJson(isikemiskinan))
            .toList();
      }
    } catch (isikemiskinan) {
      // ignore: avoid_print
      print(isikemiskinan.toString());
    }
  }
}
