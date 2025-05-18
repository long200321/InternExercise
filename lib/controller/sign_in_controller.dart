import 'package:get/get.dart';

import '../services/authentication_account.dart';
import 'package:punworld_app/routes/routes.dart';
class SignInController extends GetxController{
  var email=''.obs;
  var password=''.obs;
  RxString errorMess =''.obs;
  setEmail(String value)=>email.value=value;
  setPassword(String value)=>password.value=value;
  AuthenticationAccount authenAcc = AuthenticationAccount();
  Future signInEmail()async{
    dynamic user = await authenAcc.signInEmail(email.value, password.value);
    if(user!=null){
      Get.offAllNamed(Routes.home);
      print('thanh coing');
    }
    else{
      errorMess.value = 'Email hoặc mật khẩu chưa đúng';
      print('loi');
    }
  }
}