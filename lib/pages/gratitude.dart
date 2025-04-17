import 'package:flutter/material.dart';
class Gratitude extends StatelessWidget {
  const Gratitude({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: 
        Center(child: Icon(Icons.sentiment_satisfied),),)),
    );
  }
}
