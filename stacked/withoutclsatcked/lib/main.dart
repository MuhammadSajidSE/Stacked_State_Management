import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:withoutclsatcked/App/App.locator.dart';
import 'package:withoutclsatcked/App/App.router.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }
}



// jsonplaceholder/user