import 'package:my_app/app/app.locator.dart';
import 'package:my_app/app/app.router.dart';
import 'package:my_app/services/cardlist.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final cardservices = locator<Cards>();
  final navservice = locator<NavigationService>();
  buildingcard(index) {
    cardservices.add(index);
    rebuildUi();
  }

  navfunction() {
    navservice.navigateTo(Routes.detail);
  }
}
