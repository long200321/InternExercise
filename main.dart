import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 3',
      home: Q3(),
      debugShowCheckedModeBanner: false,
    );
  }

}

class Q3 extends StatefulWidget {
  const Q3({super.key});

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Question 3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        SafeArea(child: buildInputRow())
        ],
      ),
    );
  }

  Row buildInputRow() {
    return Row(
        children: [
          Container(
              width: 160,
              child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nhap so nguyen a',),)),
          Padding(padding: EdgeInsets.all(5)),
          Container(
              width: 50,
              child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '+ - * /',labelStyle: TextStyle(fontSize: 10)),)),
          Padding(padding: EdgeInsets.all(5)),
          Container(
              width: 160,
              child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nhap so nguyen b',),)),

        ],
      );
  }
}
