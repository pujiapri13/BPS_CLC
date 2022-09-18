import 'dart:convert';
import 'package:http/http.dart' as http;

class Repository {
  final _baseURL = 'https://bps-oss.herokuapp.com/bps-api/pdrb';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        Iterable length = jsonDecode(response.body);
        return jsonEncode(response.body);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
