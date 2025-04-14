import 'package:ch7_animation/widgets/animated_controller.dart';
import 'package:ch7_animation/widgets/animated_opacity.dart';
import 'package:ch7_animation/widgets/animated_staggered.dart';
import 'package:flutter/material.dart';
import 'package:ch7_animation/widgets/animated_container.dart';
import 'package:ch7_animation/widgets/animated_crossfade.dart';
import 'package:ch7_animation/widgets/animated_opacity.dart';
import 'package:ch7_animation/widgets/animated_controller.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child:
        Column(children: [
          // AnimatedContainerWidget(),
          // Divider(),
          // AnimatedCrossfadeWidget(),
          // Divider(),
          // AnimatedOpacityWidget(),
          // Divider(),
          // AnimatedControllerWidget(),
          AnimatedStaggeredWidget(),
        ],),)),
    );
  }
}
