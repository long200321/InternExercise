import 'package:flutter/material.dart';
class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
    double _width = 100.0;
    double _height = 100.0;
    void _increaseWidth(){
      setState(() {
        _width = _width >=350? 100:_width+=50;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.decelerate,
            color: Colors.lightBlue,
            height: _height,
            width: _width,
            child: TextButton(onPressed: (){_increaseWidth();}, child:
              Text('Width is $_width')),)
      ],
    );
  }
}
