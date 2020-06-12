import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class Register {
  final http.Client client;

  Register(this.client);
  Future<String> call(
      {@required String username,
      @required String password,
      @required String email}) async {
    final response = await client.post("http://192.168.1.202:8090/api/users/",
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          "name": username,
          "email": email,
          "password": password,
          "role": "client"
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
