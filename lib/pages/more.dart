import 'package:ch8_exercise/pages/animation_ex.dart';
import 'package:ch8_exercise/pages/button_ex.dart';
import 'package:ch8_exercise/pages/cloumn_row_ex.dart';
import 'package:ch8_exercise/pages/custom_scrollview_ex.dart';
import 'package:ch8_exercise/pages/grid_ex.dart';
import 'package:ch8_exercise/pages/image_ex.dart';
import 'package:ch8_exercise/pages/orientation_ex.dart';
import 'package:ch8_exercise/pages/stack_ex.dart';
import 'package:ch8_exercise/pages/tabbar_ex.dart';
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of exercise')),
      body: SafeArea(
        child: SingleChildScrollView(child: Column(
          children: [
            GestureDetector(
              child: Container(
        decoration: BoxDecoration(color: Colors.white,border: Border.all(),boxShadow: [BoxShadow(blurRadius: 2)]),
          child: Row(
            children: [
              SizedBox(
                width: 120,
                height: 100,
                child: Image.asset('assets/images/button_exercise.png'),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
              Text('Bài tập về Button'),
            ],
          ),
        ),
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonEx()));
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(color: Colors.white,border: Border.all(),boxShadow: [BoxShadow(blurRadius: 2)]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: Image.asset('assets/images/image_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Text('Bài tập về Image'),
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageEx()));
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(color: Colors.white,border: Border.all(),boxShadow: [BoxShadow(blurRadius: 2)]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: Image.asset('assets/images/column_row_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Text('Bài tập về Column & Row'),
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CloumnRowEx()));
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(color: Colors.white,border: Border.all(),boxShadow: [BoxShadow(blurRadius: 2)]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: Image.asset('assets/images/animation_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Text('Bài tập về Animation'),
                    ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimationEx()));
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(color: Colors.white,border: Border.all(),boxShadow: [BoxShadow(blurRadius: 2)]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: Image.asset('assets/images/orientation_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Text('Bài tập về Orientation'),
                    ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OrientationEx()));
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            GestureDetector(
              
              child: Container(
                decoration: BoxDecoration(color: Colors.white,border: Border.all(),boxShadow: [BoxShadow(blurRadius: 2)]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: Image.asset('assets/images/tabbar_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Text('Bài tập về TabBar'),
                    ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TabbarEx()));
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            InkWell(
              child: Container(
                decoration: BoxDecoration(color: Colors.white,border: Border.all(),boxShadow: [BoxShadow(blurRadius: 2)]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: Image.asset('assets/images/gridview_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Text('Bài tập về GridView'),
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GridEx()));
              },
            ),
            GestureDetector(

              child: Container(
                decoration: BoxDecoration(color: Colors.white,border: Border.all(),boxShadow: [BoxShadow(blurRadius: 2)]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: Image.asset('assets/images/stack_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Text('Bài tập về Stack'),
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StackEx()));
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            GestureDetector(

              child: Container(
                decoration: BoxDecoration(color: Colors.white,border: Border.all(),boxShadow: [BoxShadow(blurRadius: 2)]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 100,
                      child: Image.asset('assets/images/custom_scrollview_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                    Text('Bài tập về CustomScrollView'),
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomScrollviewEx()));
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ],
        ),)
      ),
    );
  }
}