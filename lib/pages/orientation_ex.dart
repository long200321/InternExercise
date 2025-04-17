import 'package:flutter/material.dart';
class OrientationEx extends StatelessWidget {
  const OrientationEx({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;

    return _orientation==Orientation.portrait? Scaffold(
      appBar: AppBar(title: Text('Orientation Exercise'),),
      body:SafeArea(child: SingleChildScrollView(child:
        Column(children: [
          Text('Text 1'),
          Text('Text 2'),
          Text('Text 3'),
        ],),)),
    ) : Scaffold(
      appBar: AppBar(title: Text('Orientation Exercise'),),
      body:SafeArea(child: SingleChildScrollView(child:
      Column(children: [
        Text('Text 1'),
        Text('Text 2'),
      ],),)),
    );
  }
}
