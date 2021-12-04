// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:weather_app/models/model.dart';
import 'package:weather_app/services/fetchApi.dart';
import 'package:weather_app/widgits/responsive.dart';
import 'package:weather_app/widgits/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  // set decimal to two point
  num SetDecimal(num value) {
    return double.parse(((value).toStringAsFixed(2)));
  }
  //kelvin to celcius
  num KelvinToCelcius(num temperature){
    return SetDecimal(temperature - 273.15);
  }
  //current date
  String CurrentDate(){
    var monthLst = ['January','February','March','April','May','June','July','August','September','October','November','December'];
    var weekList = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    String day = weekList.elementAt(date.weekday - 1);
    String month = monthLst.elementAt(date.month - 1);
    return ("$day ${date.day} $month");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.secondarybackground,
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: getUser(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Column(
                  children: [
                    Container(
                      height: Resposive.ResposiveHeight(context, 0.8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppTheme.primarybackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          //header name of city
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 4),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: AppTheme.headingFontColor,
                                  ),
                                  Text(
                                    "${snapshot.data[0].name}",
                                    style: TextStyle(
                                      fontSize: Resposive.ResponsiveWidth(
                                          context, 0.05),
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.headingFontColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //image of temprature
                          Positioned(
                            top: 45,
                            child: Container(
                              height: Resposive.ResposiveHeight(context, 0.25),
                              child: Image.asset(
                                "Images/cloudy.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //temprature
                          Positioned(
                            top: 220,
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "${KelvinToCelcius(snapshot.data[0].temp)}",
                                    style: TextStyle(
                                      fontSize:
                                          Resposive.ResponsiveWidth(context, 0.24),
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.headingFontColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 65),
                                  child: Icon(Icons.circle,color: AppTheme.headingFontColor),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 120,
                            child: Column(
                              children: [
                                Container(
                                  child: Text(//
                                    '${snapshot.data[0].main}',
                                    style: TextStyle(
                                      fontSize: Resposive.ResponsiveWidth(
                                          context, 0.06),
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.headingFontColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '${CurrentDate()}',
                                    style: TextStyle(
                                      fontSize: Resposive.ResponsiveWidth(
                                          context, 0.03),
                                      fontWeight: FontWeight.normal,
                                      color: AppTheme.headingFontColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            child: Container(
                              width: 300,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.air_outlined,
                                          color: AppTheme.headingFontColor,
                                        ),
                                        Text(
                                          '${snapshot.data[0].speed} km/h',
                                          style: TextStyle(
                                            fontSize: Resposive.ResponsiveWidth(
                                                context, 0.03),
                                            fontWeight: FontWeight.normal,
                                            color: AppTheme.headingFontColor,
                                          ),
                                        ),
                                        Text(
                                          'Wind',
                                          style: TextStyle(
                                            fontSize: Resposive.ResponsiveWidth(
                                                context, 0.03),
                                            fontWeight: FontWeight.normal,
                                            color: AppTheme.headingFontColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.cloud_rounded,
                                          color: AppTheme.headingFontColor,
                                        ),
                                        Text(
                                          '${snapshot.data[0].humidity}%',
                                          style: TextStyle(
                                            fontSize: Resposive.ResponsiveWidth(
                                                context, 0.03),
                                            fontWeight: FontWeight.normal,
                                            color: AppTheme.headingFontColor,
                                          ),
                                        ),
                                        Text(
                                          'Humidity',
                                          style: TextStyle(
                                            fontSize: Resposive.ResponsiveWidth(
                                                context, 0.03),
                                            fontWeight: FontWeight.normal,
                                            color: AppTheme.headingFontColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.compass,
                                          color: AppTheme.headingFontColor,
                                        ),
                                        Text(
                                          '87%',
                                          style: TextStyle(
                                            fontSize: Resposive.ResponsiveWidth(
                                                context, 0.03),
                                            fontWeight: FontWeight.normal,
                                            color: AppTheme.headingFontColor,
                                          ),
                                        ),
                                        Text(
                                          'Min Temp',
                                          style: TextStyle(
                                            fontSize: Resposive.ResponsiveWidth(
                                                context, 0.03),
                                            fontWeight: FontWeight.normal,
                                            color: AppTheme.headingFontColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextField(
                        // controller: widget.controller,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                              color: AppTheme.headingFontColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          hintText: "Enter City Name",
                          fillColor: AppTheme.primarybackground,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // widget.runner();
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 13),
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: AppTheme.primarybackground,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'SEE WEATHER REPORT',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppTheme.headingFontColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
