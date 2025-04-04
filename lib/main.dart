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
  String noitice='';
  int result=0;
  int di=0,dj=0;
  final TextEditingController _input1 = TextEditingController();
  final TextEditingController _input2 = TextEditingController();

  String checkDinhDang(){
    setState(() {
      if(_input1.text.isEmpty || _input2.text.isEmpty)
      {
        noitice='Nhap du lieu vao 2 o trong';
      }
      else{
        if( (int.tryParse(_input1.text)==null) || (int.parse(_input1.text)<=1 || int.parse(_input1.text)>106))
        {
          noitice='Số lượng đoạn đường i: 1<i<107\nKhoảng cách trbinh di: 1<di<10^9';
        }
        else{
          noitice='';
        }
      }

    });
    return noitice;

  }

  void function(){
    setState(() {
      if(checkDinhDang()=='')
      {
        List<int> khoangCachTB = [];
        int min=0;
        khoangCachTB=(_input2.text.split(' ').map(int.parse).toList());
        khoangCachTB.sort();
        result=khoangCachTB[1]-khoangCachTB[0];
        if(khoangCachTB.length<int.parse(_input1.text)){
          noitice='số lượng đoạn đường phải khớp với bạn đã nhập';
        }
        else{
          for(int i =0;i<khoangCachTB.length;i++)
            {

              min=(khoangCachTB[i]-khoangCachTB[i+1]).abs();
              result = result>min? min:result;
            }
        }
      }
      else{
        checkDinhDang();
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
      appBar: AppBar(title: Text('Question 4'),),
      body: SafeArea(child: SingleChildScrollView(child: buildInputColumn(),)),
    );
  }

  Column buildInputColumn() {
    return Column(

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
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text(noitice,style: TextStyle(fontSize: 20,backgroundColor: Colors.red),)],),
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [

        ElevatedButton(onPressed: ()=>{function()}, child: Text('Confirm')),
        ],),
        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        Text('Đoạn đường $di và $dj có độ lệch nhỏ nhất là:$result',style: TextStyle(fontSize: 20),),

      ],)],
    );
  }
}
