import 'package:flutter/material.dart';
class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: Center(
        child: Icon(Icons.timer),
      ),)),
    );
  }
}
