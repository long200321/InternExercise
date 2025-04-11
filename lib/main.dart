import 'package:flutter/material.dart';
import 'package:chapter6/pages/home.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chapter 6',
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.lightGreen,)

    );
  }

}
