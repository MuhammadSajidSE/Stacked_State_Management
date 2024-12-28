import 'package:ecomerce/ui/views/home/home_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, viemodle, child) {
          return Scaffold(
              backgroundColor: const Color.fromARGB(255, 168, 131, 255),
              body: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      "Welcome To notes",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  ),
                  const Text(
                    "Have a great Day",
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 70),
                    child: const Text(
                      "My Priority Task",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        // ignore: sort_child_properties_last
                        child: Column(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 100),
                              child: const Icon(
                                Icons.phone_android,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "2 hours Ago",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 128, 128, 128),
                            borderRadius: BorderRadius.circular(30)),
                        height: 250,
                        width: 150,
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 128, 128, 128),
                            borderRadius: BorderRadius.circular(10)),
                        height: 250,
                        width: 150,
                      ),
                    ],
                  )
                ],
              ));
        });
  }
}
