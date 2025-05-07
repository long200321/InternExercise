import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_exercise/pages/home.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}