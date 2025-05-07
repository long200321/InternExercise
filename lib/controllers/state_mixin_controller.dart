import 'package:get/get.dart';
class StateMixinController extends GetxController with StateMixin{
  int count =10;
  void getCount(){
    for(int i =0;i<=count;i++){
      if(i!=count){
        change('Loading',status: RxStatus.loading());
      }
      else{
        if(i==count){
          change('Good',status: RxStatus.success());
        }
        else{
          change(null,status: RxStatus.error('Loi rui'));
        }
      }
    }
  }
}