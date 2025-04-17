import 'package:ch8_exercise/pages/animation_ex.dart';
import 'package:ch8_exercise/pages/button_ex.dart';
import 'package:ch8_exercise/pages/cloumn_row_ex.dart';
import 'package:ch8_exercise/pages/image_ex.dart';
import 'package:ch8_exercise/pages/orientation_ex.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 120,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Image.asset('assets/images/button_exercise.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    SizedBox(
                      height: 100,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Text('\n\nCác bài tập về Button'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ButtonEx()),
                        );
                      },
                      child: Text('Tìm hiểu'),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 120,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Image.asset('assets/images/image_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    SizedBox(
                      height: 100,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Text('\n\nCác bài tập về Image'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ImageEx()),
                        );
                      },
                      child: Text('Tìm hiểu'),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 120,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Image.asset('assets/images/column_row_ex.png'),
                    ),
                    SizedBox(
                      height: 100,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Text('\n\nCác bài tập về Column&Row'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CloumnRowEx(),
                          ),
                        );
                      },
                      child: Text('Tìm hiểu'),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 120,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Image.asset('assets/images/animation_ex.png'),
                    ),
                    SizedBox(
                      height: 100,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Text('\n\nCác bài tập về Animation'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnimationEx(),
                          ),
                        );
                      },
                      child: Text('Tìm hiểu'),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Image.asset('assets/images/tabbar_ex.png'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    SizedBox(
                      height: 100,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Text('\n\nCác bài tập về TabBar'),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TabbarEx()));
                    }, child: Text('Tìm hiểu')),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 120,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Image.asset('assets/images/orientation_ex.png'),
                    ),
                    SizedBox(
                      height: 100,
                      //decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Text('\n\nCác bài tập về Orientation'),
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OrientationEx()));
                    }, child: Text('Tìm hiểu')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
