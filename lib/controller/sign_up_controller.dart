import 'package:get/get.dart';
import 'package:punworld_app/services/authentication_account.dart';
import 'package:punworld_app/services/database_account.dart';

class SignUpController extends GetxController{
  var userName=''.obs;
  var email=''.obs;
  var password=''.obs;
  var cPassword=''.obs;
  setUserName(String value)=>userName.value=value;
  setEmail(String value)=>email.value=value;
  setPassword(String value)=>password.value=value;
  setCPassword(String value)=>cPassword.value=value;
  AuthenticationAccount authenAcc = AuthenticationAccount();
  Future registerEmail()async{
    dynamic user = await authenAcc.registerEmail(email.value, password.value);
    if(user!=null){
      DatabaseAccount(user!.uid).updateUser(userName.value, email.value,password.value);
      print('thanh coing');
    }
    else{
      print('loi');
    }
  }
}