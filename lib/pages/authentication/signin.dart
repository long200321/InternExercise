import 'package:flutter/material.dart';

import '../../services/authenticate.dart';
class Signin extends StatefulWidget {
  const Signin({super.key, required this.toggleView});
  final Function toggleView;

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In'),
        actions: [
          IconButton(onPressed: (){widget.toggleView();}, icon: Icon(Icons.app_registration))
        ],),
      body: SafeArea(child: Center(child: ElevatedButton(onPressed: ()async{
        dynamic user = await AuthenticateService().signToAnonymous();
        print(user.uid);
      }, child: Text('SignIn')),)),
    );
  }
}
