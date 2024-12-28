import 'package:ecomerce/ui/views/searching/searching_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SearchingView extends StatelessWidget {
  const SearchingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => Searchmodel(),
        builder: (context, viemodle, child) {
          return Scaffold(
            
          );
        });
  }
}
