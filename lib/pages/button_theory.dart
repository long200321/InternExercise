import 'package:flutter/material.dart';
class ButtonTheory extends StatelessWidget {
  const ButtonTheory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Theory'),),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Text('hihi')
          ],
        ),
      )),
    );
  }
}
