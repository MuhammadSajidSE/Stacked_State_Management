import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:withoutclsatcked/App/App.router.dart';
import 'package:withoutclsatcked/Screen/Contact/contact_model.dart';
class ContactView extends StatelessWidget {
  const ContactView({super.key});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => ContactViewmodel(),
        builder: (context, viemodle, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Contact"),
            ),
            body: Column(
              children: [
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        viemodle.navigationService.navigateToHomeView();
                      },
                      child: Text("Home")),
                ),
                Center(
                    child: ElevatedButton(
                        onPressed: () {
                          viemodle.navigationService.navigateToSettingView();
                        },
                        child: Text("Setting"))),
              ],
            ),
          );
        });
  }
}
