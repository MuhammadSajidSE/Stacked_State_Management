import 'package:ecomerce/services/home_widget.dart';
import 'package:ecomerce/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:ecomerce/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:ecomerce/ui/views/home/home_view.dart';
import 'package:ecomerce/ui/views/searching/searching_view.dart';
import 'package:ecomerce/ui/views/setting/setting_view.dart';
import 'package:ecomerce/ui/views/shoping/shoping_view.dart';
import 'package:ecomerce/ui/views/startup/startup_view.dart';
import 'package:ecomerce/ui/views/wishelist/wishlist_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView,initial: true),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: WishlistView),
    MaterialRoute(page: SearchingView),
    MaterialRoute(page: ShopingView),
    MaterialRoute(page: SettingView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    Singleton(classType: Homewidget)
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
