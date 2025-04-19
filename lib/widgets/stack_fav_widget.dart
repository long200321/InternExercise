import 'package:flutter/material.dart';
class StackFavWidget extends StatelessWidget {
  const StackFavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/beach.jpg'),
        Positioned(
            bottom: 10,
            left: 10,
            child: CircleAvatar(child: Image.asset('assets/images/coconut.jpg'),)),
        Positioned(
            top: 0,
            right: 0,
            child: FractionalTranslation(translation: Offset(0.3, -0.3),
              child:CircleAvatar(child: Image.asset('assets/images/star.jpg'),) ,))
      ],
    );
  }
}
