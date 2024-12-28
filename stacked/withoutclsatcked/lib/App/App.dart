import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:withoutclsatcked/Services/get_services.dart';
import 'package:withoutclsatcked/Screen/Contact/contact_view.dart';
import 'package:withoutclsatcked/Screen/Home/home_view.dart';
import 'package:withoutclsatcked/Screen/Setting/setting_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: ContactView),
    MaterialRoute(page: SettingView),
    // @stacked-route
  ],
  dependencies: [
 LazySingleton(classType: NavigationService),
 LazySingleton(classType: Apiservices),

  ],
)
class App {}
