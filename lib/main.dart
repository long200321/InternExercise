import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Q1(),
    );
  }
}

class Q1 extends StatefulWidget {
  const Q1({super.key});

  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  final TextEditingController _input1 = TextEditingController();
  String result='';

  void function(){
    setState(() {
      result='';
      for (int i = 0; i < _input1.text.length; i += 2) {
        String digit = _input1.text[i + 1];
        result += digit;
      }
    });
  }

  @override
  void dispose(){
    super.dispose();
    _input1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Question 1'),),
      body: SafeArea(child: SingleChildScrollView(child: Column(
        children: [
          Text('Nhap so tu nhien N de giai thuat toan',style: TextStyle(fontSize: 20),),
          TextField(controller: _input1,decoration: InputDecoration(border: OutlineInputBorder()),),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          ElevatedButton(onPressed: function, child: Text('Confirm')),
          Text('So N sau khi rut gon theo thuat toan:$result',style: TextStyle(fontSize: 20),),
        ],
      ),)),
    );
  }
}


