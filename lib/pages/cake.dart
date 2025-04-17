import 'package:flutter/material.dart';
class Cake extends StatelessWidget {
  const Cake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child:
        Center(child: Icon(Icons.cake),),)),
    );
  }
}
