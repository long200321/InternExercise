import 'package:firebase_ex/pages/authentication/register.dart';
import 'package:firebase_ex/pages/authentication/signin.dart';
import 'package:flutter/material.dart';
class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isShowSignIn = true;
  void toggleView(){
    setState(() {
      isShowSignIn = !isShowSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isShowSignIn? Signin(toggleView: toggleView,):Register(toggleView: toggleView,);
  }
}
