import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class ProfileEdit {
  final http.Client client;

  ProfileEdit(this.client);
  Future<String> call(
      {@required String token,
        @required String firstNmae,
      @required String lastName,
      @required String location,
      @required String phonenumber,
      @required String dateOfBirth,
      @required String cin,
      @required String bank,
      @required String assurance,
      @required String job}) async {
    final response = await client.post("http://192.168.1.202:8090/api/profile/",
        headers: {'Content-Type': 'application/json',"x-auth-token":token},
        body: json.encode({
          "first_name": firstNmae,
          "last_name": lastName,
          "birthday": "1996",
          "location": location,
          "phone_num": "999999999",
          "cin_num": cin,
          "assurence": assurance,
          "bank": bank,
          "job": job
        }));
        print(json.encode({
          "first_name": firstNmae,
          "last_name": lastName,
          "birthday": "1996",
          "location": location,
          "phone_num": "999999999",
          "cin_num": cin,
          "assurence": assurance,
          "bank": bank,
          "job": job
        }));
         print(response.body.toString());
    if (response.statusCode == 200)
      return response.body.toString();
    else {
      return "Login isues";
    }
  }
}

String getToken(Map<String, dynamic> json) {
  return json['token'];
}
