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

  int numb1=0;
  String? operator;
  int numb2=0;
  String result='';
  String noitice='';
  String chanleString='';
  String nguyentoString='';
  String chinhphuongString='';
  List<String> listCharecter =[];
  int le=0;
  int chan=0;
  String resultTotalLeChan ="";
  final TextEditingController _getNumb1 = TextEditingController();
  final TextEditingController _getNumb2 = TextEditingController();
  final TextEditingController _getEqual = TextEditingController();

  void equal(){

    setState(() {
      numb1 = int.tryParse(_getNumb1.text)??0;
      operator = _getEqual.text;
      numb2 = int.tryParse(_getNumb2.text)??0;
      if(_getNumb1.text.isEmpty || _getNumb2.text.isEmpty){
        noitice="Ky tu khong hop le, nhap lai";
      }
      else{
        switch(operator){
          case '+':
            result="${numb1+numb2}";
            break;
          case '-':
            result= "${numb1-numb2}";
            break;
          case '*':
            result="${numb1*numb2}";
            break;
          case 'x':
            result="${numb1*numb2}";
            break;
          case '/':
            {
              numb2!=0? result="${numb1/numb2}": result= "";
            }
            break;
          default:
            noitice="Phep toan khong hop le";
            break;
        }
      }

    });
    _getNumb1.text='';
    _getEqual.text='';
    _getNumb2.text='';
  }

  @override
  void dispose(){
    super.dispose();
    _getNumb1.dispose();
    _getNumb2.dispose();
    _getEqual.dispose();
  }

  void checkChanLe(){
    (int.parse(result)%2==0)? chanleString="Kết quả là số chẵn":chanleString="Kết quả là số lẻ";
  }

  void checkNguyenTo(){
    if(int.parse(result)%1==0 && int.parse(result)%int.parse(result)==0){
      nguyentoString="Đây là số nguyên tố";
    }
    else{
      nguyentoString="Đây khng là số nguyên tố";
    }
  }

  void checkChinhPhuong(){
    double temp = sqrt(double.parse(result));
    if(double.parse(result)<0 || temp * temp !=double.parse(result))
      {
        chinhphuongString="Khong phai so chinh phuong";
      }
    else{
      chinhphuongString="Đây là so chinh phuong";
    }
  }

  void checkChar(){
    listCharecter = result.split('');
    listCharecter.forEach((numb){
      int.parse(numb)%2==0? le++:chan++;
    });
    resultTotalLeChan="Kết quả hợp thành từ $le số lẻ và $chan số chẵn";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Question 3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildInputRow(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(noitice,style: TextStyle(fontSize: 20,backgroundColor: Colors.red),)
                  ],
                ),
                Row(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 72,vertical: 0)),
                      ElevatedButton(onPressed: () => {equal(),checkChar(),checkChanLe(),checkChinhPhuong(),checkNguyenTo()}, child: Text('Caculate')),
                    ],
                  ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 35,vertical: 0)),
                    Expanded(child: Text('Phép tính của bạn: $numb1 $operator $numb2 = $result\n\n$chanleString\n\n$nguyentoString\n\n$chinhphuongString\n\n$resultTotalLeChan',softWrap: true,style: TextStyle(fontSize: 20),),
                    ),
                  ],
                )

              ],
            ),

          ],
        ),
        ),
      ),
    );
  }

  Row buildInputRow() {
    return Row(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 0,vertical: 30)),
          Container(
              width: 160,
              child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nhap so nguyen a',),keyboardType: TextInputType.number,controller: _getNumb1,)),
          Padding(padding: EdgeInsets.all(5)),
          Container(
              width: 50,
              child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '+ - * /',labelStyle: TextStyle(fontSize: 10)),controller: _getEqual,)),
          Padding(padding: EdgeInsets.all(5)),
          Container(
              width: 160,
              child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nhap so nguyen b',),keyboardType: TextInputType.number,controller: _getNumb2,)),

        ],
      );
  }
}
