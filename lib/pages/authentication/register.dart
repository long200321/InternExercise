import 'package:flutter/material.dart';

import '../../services/authenticate.dart';
class Register extends StatefulWidget {
  const Register({super.key, required this.toggleView});
  final Function toggleView;


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  AuthenticateService _auth = AuthenticateService();
  String error ='';
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register'),
        actions: [
          IconButton(onPressed: (){widget.toggleView();}, icon: Icon(Icons.login))
        ],),
      body: SafeArea(child: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(width: 200,
                    child: TextFormField(
                      validator: (String? value){
                        if(value?.isEmpty??true){
                          return 'nhap email';
                        }
                        return null;
                      },
                      onChanged: (value)=>setState(() {
                        email = value;
                      }),
                    ),),
                  Container(width: 200,
                    child: TextFormField(
                      validator: (String? value){
                        if(value!.length<6){
                          return 'password phai tren 6 ky tu';
                        }
                        return null;
                      },
                      obscureText: true,
                      onChanged: (value)=>setState(() {
                        password = value;
                      }),
                    ),),
                  ElevatedButton(onPressed: ()async{
                    if(_formKey.currentState!.validate()){
                      dynamic user = await _auth.registorWithEmail(email, password);
                      user==null?setState(() {
                        error ='Sai dinh dang email';
                      }):
                      print(user);
                    }
                    else{
                      print('cc');
                    }
                  }, child: Text('Register')),
                  Text(error)
                ],
              )),
        )
      ))
    );
  }
}
