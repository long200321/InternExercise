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
      title: 'Question 6',
      debugShowCheckedModeBanner: false,
      home: Q6(),
    );
  }
}
class Q6 extends StatefulWidget {
  const Q6({super.key});

  @override
  State<Q6> createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  final TextEditingController _input1 = TextEditingController();
  final TextEditingController _input2 = TextEditingController();
  String noitice='';
  int result=0;
  List<int> listBienXeDep = [];

  bool checkNguLinh(int soxe){
    String s='';
    setState(() {
       s = soxe.toString();
    });
    return s==s.split('').reversed.join();
  }
  bool checkNguyenTo(int soxe){
    bool temp=false;
    setState(() {
      ((soxe %1==0 && soxe%soxe==0)||soxe<=1)? temp=true:temp=false;
    });
    return temp;
  }

  void function(){
    setState(() {
      listBienXeDep.clear();
      for(int soxe=int.parse(_input1.text);soxe<=int.parse(_input2.text);soxe++)
        {
          if(checkNguLinh(soxe)==true && checkNguyenTo(soxe)==true)
            {
              listBienXeDep.add(soxe);
            }
        }
    });
  }
  @override
  void dispose(){
    super.dispose();
    _input1.dispose();
    _input2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Question 6'),),
      body: SafeArea(child: buildSingleChildScrollView()),
    );
  }

  SingleChildScrollView buildSingleChildScrollView() {
    return SingleChildScrollView(child: Column(
      children: [Column(
        children: [
          Text('Nhập giới hạn của biển số 10000<=X<=99999',style: TextStyle(fontSize: 20),),
          Row(children: [
            Expanded(child: TextField(controller: _input1,decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Numb A'),)),
            Expanded(child: TextField(controller: _input2,decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Numb B'),)),
          ],),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Text(noitice,style: TextStyle(fontSize: 20,backgroundColor: Colors.red),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(onPressed: ()=>{function()}, child: Text('Confirm'))
            ],),
          Text("Số lượng biển xe đẹp: ${listBienXeDep.length}\n${listBienXeDep.join(', ')}")
        ],
      )],
    ),);
  }
}

