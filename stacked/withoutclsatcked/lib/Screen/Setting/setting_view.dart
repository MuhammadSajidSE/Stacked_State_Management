import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:withoutclsatcked/App/App.router.dart';
import 'package:withoutclsatcked/Screen/Setting/setting_model.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => SettingViewmodel(),
        builder: (context, viemodle, child) {
          return  Scaffold(
            appBar: AppBar(
              title: Text("Setting"),
            ),
            body: Column(
              children: [
                Center(
                        child: ElevatedButton(onPressed: (){
                             viemodle.navigationService
                              .navigateToHomeView();
                        }, child: Text("Home")),
                ),
                Center(
                        child: ElevatedButton(onPressed: (){
                             viemodle.navigationService
                              .navigateToContactView();
                        }, child: Text("Contact"))
                ),
              ],
            ),
          );
        });
  }
}
