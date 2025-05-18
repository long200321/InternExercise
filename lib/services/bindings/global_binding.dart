import 'package:get/get.dart';
import 'package:punworld_app/controller/index.dart';
class GlobalBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SignInController());
    Get.put(SignUpController());
  }}