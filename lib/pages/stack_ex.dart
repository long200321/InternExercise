import 'package:ch8_exercise/widgets/stack_fav_widget.dart';
import 'package:ch8_exercise/widgets/stack_widget.dart';
import 'package:flutter/material.dart';
class StackEx extends StatelessWidget {
  const StackEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Exercise'),),
      body: SafeArea(child:
      ListView.builder(itemCount: 8,itemBuilder: (BuildContext context, int index){
        return index.isEven?StackWidget():StackFavWidget();
      })),
    );
  }
}
