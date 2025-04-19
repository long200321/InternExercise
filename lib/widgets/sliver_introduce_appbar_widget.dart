import 'package:flutter/material.dart';
class SliverIntroduceAppbarWidget extends StatelessWidget {
  const SliverIntroduceAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor:Colors.lightBlue.shade100 ,
      leading: Container(
        child: Image.asset('assets/images/logo.png'),
      ),
      title: Text('Flutter Exercise'),
    );
  }
}
