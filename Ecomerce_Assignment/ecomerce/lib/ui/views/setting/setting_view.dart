import 'package:ecomerce/ui/views/setting/setting_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => SettingViewmodel(),
        builder: (context, viemodle, child) {
          return Scaffold();
        });
  }
}
