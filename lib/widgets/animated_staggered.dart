import 'package:flutter/material.dart';
class AnimatedStaggeredWidget extends StatefulWidget {
  const AnimatedStaggeredWidget({super.key});

  @override
  State<AnimatedStaggeredWidget> createState() => _AnimatedStaggeredWidgetState();
}

class _AnimatedStaggeredWidgetState extends State<AnimatedStaggeredWidget> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animationFloatUp;
  late Animation<double> _animationGlowSize;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this,duration: Duration(seconds: 4));
  }

  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _balloonHeight = MediaQuery.of(context).size.height / 2;
    double _balloonWidth = MediaQuery.of(context).size.height / 3;
    double _balloonBottomLocation = MediaQuery.of(context).size.height -
        _balloonHeight;
    _animationFloatUp = Tween(begin: _balloonBottomLocation,end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Interval(0.0, 1.0,curve: Curves.fastOutSlowIn))
    );
    _animationGlowSize = Tween(begin: 50.0, end: _balloonWidth).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.elasticInOut),
      ),
    );
    return AnimatedBuilder(
        animation: _animationFloatUp,
        builder: (context, child) {
          return Container(
            child: child,
            margin: EdgeInsets.only(top: _animationFloatUp.value),
            width: _animationGlowSize.value,
          );
        },
        child: GestureDetector(
          onTap: (){
            if (_controller.isCompleted) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
          },
          child: Image.asset('assets/images/balloons.png',height: _balloonHeight,width: _balloonWidth,),
        ) 
    );
  }
}
