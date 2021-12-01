import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_app_7/models/User.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future<List<Users>> fetchData(bool state) async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    final loadBundle = await rootBundle.loadString('assets/files/data.json');
    if(response.statusCode == 200){
      return Users.fromJsonList(jsonDecode(state ? response.body : loadBundle));
    }else{
      throw Exception('Failed to load Users');
    }
  }
}