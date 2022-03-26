
// ignore_for_file: file_names

import 'dart:convert';

import 'package:http/http.dart' as http;

getApi(String apiRoute) async {
  final response = await http.get(Uri.parse(apiRoute));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    print("not running because of error");
    throw Exception('Failed to load album');
  }

}