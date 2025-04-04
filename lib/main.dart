import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 4',
      home: Q4(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Q4 extends StatefulWidget {
  const Q4({super.key});

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  final TextEditingController _input1 = TextEditingController();
  final TextEditingController _input2 = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    _input1.dispose();
    _input2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Question 4'),),
      body: SafeArea(child: SingleChildScrollView(child: buildInputColumn(),)),
    );
  }

  Column buildInputColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Column(children: [
        Row(children: [
          Expanded(child: Text('Nhập số lượng đoạn đường 1<n<=106',style: TextStyle(fontSize: 20),)),
          Expanded(child: TextField(controller: _input1,decoration: InputDecoration(border: OutlineInputBorder()),)),
        ],),
        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        Row(children: [
          Expanded(child: Text('Nhập khoảng cách trbinh đã đo của các đoạn đường',style: TextStyle(fontSize: 20),)),
          Expanded(child: TextField(controller: _input2,decoration: InputDecoration(border: OutlineInputBorder()),keyboardType: TextInputType.multiline,maxLines: null,)),
        ],),
        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        Row(children: [


        ],),Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        Row(children: [

          
        ],),
      ],)],
    );
  }
}
