import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class Login {
  http.Client client;
  Future<String> call(
      {@required String username, @required String password}) async {
    client = new http.Client();
    final response =
        await client.post("http://192.168.1.202:8090/api/auth/client",
            headers: {'Content-Type': 'application/json'},
            body: json.encode({
              "email": username,
              "password": password,
            }));
    if (response.statusCode == 200)
      return getToken(json.decode(response.body));
    else {
      return "Login isues";
    }
  }
}

String getToken(Map<String, dynamic> json) {
  return json['token'];
}
