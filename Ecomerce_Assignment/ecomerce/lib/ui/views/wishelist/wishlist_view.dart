import 'package:ecomerce/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, viemodle, child) {
          return Scaffold(
            body: Center(
              child: viemodle.widgetservices.firstbutton("saad"),
            ),
          );
        });
  }
}
