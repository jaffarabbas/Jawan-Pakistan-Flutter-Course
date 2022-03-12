import 'package:flutter/material.dart';
import 'package:flutter_app_11/screen/home/home_model.dart';
import 'package:flutter_app_11/screen/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<List<Users>> eachposts;
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      // onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, homeViewObject, child) => Scaffold(
        body: Center(
          child: FutureBuilder<dynamic>(
            future: homeViewObject.fetchUsers(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Colors.green,
                        ),
                        title: Text(
                          "${snapshot.data![index].name}",
                          style: const TextStyle(
                              color: Colors.green, fontSize: 15),
                        ),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
