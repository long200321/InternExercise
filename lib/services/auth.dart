import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
class Auth{
  Future<void> authentication (BuildContext context) async{
    LocalAuthentication authentication = LocalAuthentication();
    try{
      bool didAuth = await authentication.authenticate(localizedReason: 'Test xius',
          options: AuthenticationOptions(biometricOnly: true));
      didAuth?_showSuccess(context,'Thanh cong'):_showError(context,'Loi rui');
    }catch(e){
      _showError(context,'Loi rui');
      print(e);
    }
  }
  void _showSuccess(BuildContext context, String mess){
    showDialog(context: context, builder: (context)=>AlertDialog(title: Text('Status'),content: Text(mess),));
  }
  void _showError(BuildContext context, String mess){
    showDialog(context: context, builder: (context)=>AlertDialog(title: Text('Status'),content: Text(mess),));
  }
}
