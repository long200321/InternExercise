import 'package:flutter/material.dart';
import 'package:chapter6_image/pages/home.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}