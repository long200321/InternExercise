import 'package:flutter/material.dart';
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 10),
    child: Stack(
      children: [
        Image.asset('assets/images/garden.jpg'),
        Positioned(
            bottom: 10,
            left: 10,
            child: CircleAvatar(child: Image.asset('assets/images/daisy.jpg'),)),
        Positioned(
            bottom: 10,
            right: 10,
            child: Text('Stack Flutter',style: TextStyle(fontSize: 40,color: Colors.grey),)),
      ],
    ),);
  }
}
