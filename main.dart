import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question2',
      home: Q2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Q2 extends StatefulWidget {
  const Q2({super.key});

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  int count =0;
  int result=0;
  int total=0;
  String notice = "Nhap gia tri vao 2 o trong";
  final TextEditingController _getInputValue1 = TextEditingController();
  final TextEditingController _getInputValue2 = TextEditingController();

  void increase(){

    setState(() {
      count=0;
      total=0;
      result=0;
      int num1 = int.tryParse(_getInputValue1.text)??0;
      int num2 = int.tryParse(_getInputValue2.text)??0;
      for(int i=num1;i<=num2;i++){
        if(i%3==0 && i%2==0){
          count++;

        }
        total+=i;
      }

    });
  }

  @override
  void dispose(){
    _getInputValue1.dispose();
    _getInputValue2.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("Question2",style: TextStyle(fontWeight: FontWeight.bold),),),
      body: Column(
        children: <Widget>[
          buildInputColumn(),
          buildResultColumn(),
        ],

      ),
    );
  }

  Column buildInputColumn() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Nhap so nguyen a",style: TextStyle(fontSize: 20),),
                Expanded(child: TextField(
                  controller: _getInputValue1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: OutlineInputBorder()),))
              ],
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              children: [
                Text("Nhap so nguyen b",style: TextStyle(fontSize: 20),),
                Expanded(child: TextField(
                  controller: _getInputValue2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: OutlineInputBorder()),))
              ],
            ),
          ],
        );
  }

  Column buildResultColumn() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(onPressed: increase,style: ElevatedButton.styleFrom(minimumSize: Size(30, 50)), child: Text('Confirm'),),
            Text('Tong phan tu chan chia het cho 3: $count',style: TextStyle(fontSize: 20),),
            Text('Tong phan tu trong mang: $total',style: TextStyle(fontSize: 20),),
            Text('N/2: $result',style: TextStyle(fontSize: 20),),

          ],
        );
  }
}


