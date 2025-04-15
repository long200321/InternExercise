import 'package:flutter/material.dart';
import 'package:ch8_navigator/pages/home.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Navigator',
     debugShowCheckedModeBanner: false,
     home: Home(),
   );
  }

}