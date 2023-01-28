import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pdrb_adhk_mlu.dart';
import 'package:http/http.dart' as http;

class RepositoryPdrbAdhkMLU {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pdrb-adhk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => PdrbAdhkMLU.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}
