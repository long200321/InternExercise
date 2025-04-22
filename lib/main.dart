import 'package:flutter/material.dart';
import 'package:ch11_inkwell/pages/home.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}
