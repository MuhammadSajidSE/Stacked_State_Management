import 'package:flutter/material.dart';
import 'package:my_app/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomView extends StatefulWidget {
  const HomView({super.key});
  
  @override
  State<HomView> createState() => _HomViewState();
}

class _HomViewState extends State<HomView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewmodle, child) {
        return Scaffold(
          body: Center(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return (InkWell(
                  child: ListTile(
                    title: Text(
                        "${viewmodle.cardservices.productdata[index]["namre"]}"),
                    subtitle: Text(
                        "${viewmodle.cardservices.productdata[index]["price"]}"),
                  ),
                  onTap: () {
                    viewmodle.buildingcard(index);
                    viewmodle.navfunction();
                  },
                ));
              },
              itemCount: viewmodle.cardservices.productdata.length,
            ),
          ),
        );
      },
    );
  }
}
