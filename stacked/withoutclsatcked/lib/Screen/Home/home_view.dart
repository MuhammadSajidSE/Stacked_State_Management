import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:withoutclsatcked/App/App.router.dart';
import "package:withoutclsatcked/Screen/Home/home_viewmodel.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, homeviemodle, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Home"),
            ),
            body: Column(
              children: [
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        homeviemodle.navigationService.navigateToContactView();
                      },
                      child: Text("Contact")),
                ),
                Center(
                    child: ElevatedButton(
                        onPressed: () {
                          homeviemodle.navigationService
                              .navigateToSettingView();
                        },
                        child: Text("Setting"))),
                Center(
                    child: ElevatedButton(
                        onPressed: () {
                          homeviemodle.getuser();
                        },
                        child: Text("GET API"))),
                Expanded(
                    child: ListView.builder(
                        itemCount: homeviemodle.user.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(homeviemodle.user[index]['name']),
                          );
                        }))
              ],
            ),
          );
        });
               
  }
}
