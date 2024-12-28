import 'dart:convert';

import 'package:http/http.dart' as http;

class Apiservices {
  String baseurl = 'https://jsonplaceholder.typicode.com/users';

  getuserdata() async {
    var url = Uri.parse(baseurl);
    var response = await http.get(url);
    var users = jsonDecode(response.body);
    return users;
  }
}
