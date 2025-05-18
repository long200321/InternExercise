import 'package:get/get.dart';
import 'package:punworld_app/routes/routes.dart';
import 'package:punworld_app/pages/index.dart';
class AppPages {
  static final routes = [
    GetPage(name: Routes.init, page: ()=>Splash()),
    GetPage(name: Routes.wrapped, page: ()=>Wrapped()),
    GetPage(name: Routes.sign_up, page: ()=>SignUp()),
    GetPage(name: Routes.home, page: ()=>Home()),
    //GetPage(name: Routes.home, page: ()=>Home()),
  ];
}