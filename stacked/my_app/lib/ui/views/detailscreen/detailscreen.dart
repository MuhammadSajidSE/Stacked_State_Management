import 'package:flutter/material.dart';
import 'package:my_app/ui/views/detailscreen/detailscreen_modle.dart';
import 'package:stacked/stacked.dart';
class detail extends StatelessWidget {
  const detail({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => detailmodle(),
        builder: (context, viewmodle, child) {
          return const Scaffold( 
            body: Center(
              child: Text("Muhammad Sajid"),
            ),       
          );
        });
  }
}
