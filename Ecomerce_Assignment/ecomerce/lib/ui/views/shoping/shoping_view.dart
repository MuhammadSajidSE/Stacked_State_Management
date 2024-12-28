import 'package:ecomerce/ui/views/shoping/shoping_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ShopingView extends StatelessWidget {
  const ShopingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => ShopingViewmodel(),
        builder: (context, viemodle, child) {
          return Scaffold(
            body: Center(
              child: viemodle.widgetservices.firstbutton("saad"),
            ),
          );
        });
  }
}
