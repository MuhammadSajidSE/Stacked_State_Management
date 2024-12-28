import 'package:ecomerce/app/app.locator.dart';
import 'package:ecomerce/services/home_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewmodel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final widgetservices = locator<Homewidget>();
  // navigateToSerching() {
  //   navigationService.SearchingView();
  // }
}
