import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:withoutclsatcked/App/App.locator.dart';
import 'package:withoutclsatcked/Services/get_services.dart';

class HomeViewmodel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final apiservices = locator<Apiservices>();
  List user = [];
  getuser() async {
    user = await apiservices.getuserdata();
    print(user);
    rebuildUi();
  }
}
