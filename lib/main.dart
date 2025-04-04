import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 5',
      home: Q5(),
      debugShowCheckedModeBanner: false,
    );
  }  
}

class Q5 extends StatefulWidget {
  const Q5({super.key});

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
  int result=0;
  int countLine=0;
  String noitice='';
  final TextEditingController _input1 = TextEditingController();
  final TextEditingController _input2 = TextEditingController();
  List<List<int>> cuocthi=[];
  List<int> check = [];

  void checkDinhDang(){
    setState(() {
      result=0;
      if(_input1.text.isEmpty || int.tryParse(_input1.text)==null||_input2.text.isEmpty)
        {
          noitice='Nhap so phong la so nguyen va gio thi "x y"';
        }
      else{
        countLine = checkPhongThi();
        if(countLine>int.parse(_input1.text)-1)
          {
            noitice='Khong qua 1 cuoc thi dien ra trong cung thoi diem';
          }
        else{
          function();
        }
      }
    });
  }

  void function(){
    setState(() {
      List<int> times = [];
      times = _input2.text.split(RegExp(r'[ \n]')).map(int.parse).toList();
      for(int i=0;i<times.length;i+=2)
        {
          cuocthi.add(times.sublist(i,i+2 > times.length? times.length : i+2));
        }

      cuocthi.sort((a,b)=>a[0].compareTo(b[0]));


      for(var event in cuocthi)
        {
          int start = event[0];
          int end = event[1];
          if(check.isNotEmpty && check[0]<=start)
            {
              check.removeAt(0);
            }
          check.add(end);

        }
      result=check.length;
      check.clear();
    });
  }

  int checkPhongThi(){
    return ("\n".allMatches(_input2.text).length);
  }

  void clear(){
    setState(() {
      noitice='';
      result=0;
      _input1.text='';
      _input2.text='';
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
      appBar: AppBar(title: Text('Question 5'),),
      body: SafeArea(child: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildInputColumn(),
          buildResultColumn(),
        ],
      ),)),
    );
  }

  Column buildInputColumn() {
    return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text('Nhap so luong cuoc thi',style:
                  TextStyle(fontSize: 20,),softWrap: true,textAlign: TextAlign.center,),
                ),
                Expanded(
                  child: TextField(
                    controller: _input1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],),
            Padding(padding: EdgeInsets.symmetric(horizontal: 0,vertical: 20)),
            Row(
              children: [
                Expanded(
                  child: Text('Nhap gio thi theo dinh dang \n"x y\nx y\n..."',style:
                  TextStyle(fontSize: 20,),softWrap: true,textAlign: TextAlign.center,),
                ),
                Expanded(
                  child: TextFormField(
                    controller: _input2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    maxLines: null,
                    minLines: 1,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Text(noitice,style: TextStyle(backgroundColor: Colors.red,fontSize: 20),))
                ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ElevatedButton(onPressed: () => {checkDinhDang()}, child: Text('Confirm'))],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),ElevatedButton(onPressed: clear, child: Text('Clear'))],),

          ],
        );
  }

  Row buildResultColumn() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$result',style: TextStyle(fontSize: 20),),],);
            
  }
}
