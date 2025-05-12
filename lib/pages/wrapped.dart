import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_ex/pages/authentication/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:firebase_ex/pages/home/home.dart';
class Wrapped extends StatelessWidget {
  const Wrapped({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    if(user==null)
      {
        return Authenticate();
      }
    else{
      return Home();
    }
  }
}
