import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:punworld_app/constants/colors.dart';
import 'package:punworld_app/routes/routes.dart';
import 'package:punworld_app/widget_styles/widget_style.dart';
import 'package:punworld_app/widgets/index.dart';
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),(){
      Get.offNamed(Routes.wrapped);
    });
    return Scaffold(
      backgroundColor: purpleApp,
      body: buildSplash()
    );
  }
}

class buildSplash extends StatelessWidget {
  const buildSplash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        logo,
        Padding(padding: EdgeInsets.symmetric(vertical: 30)),
        Text('Punworld',style: WidgetStyle.slogan,),
        Text('Niềm vui của bé',style: WidgetStyle.slogan,)
      ],
    ),);
  }
}
