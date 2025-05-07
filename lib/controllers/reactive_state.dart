import 'package:get/get.dart';
class ReactiveStateController extends GetxController{
  var count = 0.obs;
  void increase(){
    count++;
  }
}