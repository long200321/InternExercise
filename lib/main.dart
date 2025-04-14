import 'package:flutter/material.dart';
import 'package:ch7_animation/pages/home.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}