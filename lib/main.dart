import 'package:flutter/material.dart';
import 'package:chapter6_orientation/pages/home.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orientation',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}