// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app/models/model.dart';
import 'package:weather_app/services/fetchApi.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getUser() async {
    ApiService _apiServices = new ApiService();
    List<WeatherModel> dataSource = await _apiServices.fetchData('karachi');
    return dataSource;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Fetching'),
      ),
      body: FutureBuilder(
        future: getUser(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      // "${snapshot.data![index].id}\n"+
                      "${snapshot.data![index].temp}\n"+
                      "${snapshot.data![index].name}\n"
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
