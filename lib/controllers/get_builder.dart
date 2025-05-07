import 'package:get/get.dart';
class GetBuilderController extends GetxController{
  int count = 0;
  void increase(){
    count++;
    update();
  }
}