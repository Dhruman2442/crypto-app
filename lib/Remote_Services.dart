import 'dart:convert';

import 'package:cryptoapp/models/Crypto_model.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static Future<List<Crypto>?> fetchMovies() async {
    var response = await http.get(Uri.parse(
        'https://api.wazirx.com/sapi/v1/tickers/24hr'));
      var cryptolist = jsonDecode(response.body)as List;
      List<Crypto>? crypto =
      cryptolist.map((tagJson) => Crypto.fromJson(tagJson)).toList();
      print(crypto.length);
      return crypto;
  }
}
