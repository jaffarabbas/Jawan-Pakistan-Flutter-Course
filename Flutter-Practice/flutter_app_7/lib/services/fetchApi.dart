import 'dart:convert';
import 'package:flutter_app_7/models/User.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future<List<Users>> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if(response.statusCode == 200){
      return Users.fromJsonList(jsonDecode(response.body));
    }else{
      throw Exception('Failed to load Users');
    }
  }
}