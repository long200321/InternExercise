import 'package:flutter/material.dart';
import 'package:ch8_navigator/pages/about.dart';
import 'package:ch8_navigator/pages/grateful.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _name='';
  void _openAboutPage(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutPage()));
  }
  void _openGratefulPage(BuildContext context) async{
    String _result = await
    Navigator.push(context, MaterialPageRoute(builder: (context)=>GratefulPage(),));
    setState(() {
      _name = _result;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){_openAboutPage(context);}, icon: Icon(Icons.info_outline))
        ],
      ),
      body: SafeArea(child: SingleChildScrollView(child: Padding(
        padding: EdgeInsets.all(20),
        child: Text('Grateful for $_name ',style: TextStyle(fontSize: 30),),))),
      floatingActionButton: FloatingActionButton(onPressed: (){_openGratefulPage(context);},child: Icon(Icons.sentiment_satisfied),),
    );
  }
}
