import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ex/services/authenticate.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    User? user;
    AuthenticateService auth = AuthenticateService();
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: SafeArea(child: Center(child: ElevatedButton(onPressed: ()async{
       await auth.signOut();
       print(user);
      }, child: Text('Signout ${user?.uid}')),)),
    );
  }
}
