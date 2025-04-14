import 'package:flutter/material.dart';
class AnimatedControllerWidget extends StatefulWidget {
  const AnimatedControllerWidget({super.key});

  @override
  State<AnimatedControllerWidget> createState() => _AnimatedControllerWidgetState();
}

class _AnimatedControllerWidgetState extends State<AnimatedControllerWidget> with
    TickerProviderStateMixin {
  late AnimationController _controllerFloatUp;
  late AnimationController _controllerGrowSize;
  late Animation<double> _animationFloatUp;
  late Animation<double> _animationGrowSize;
  @override
  void initState(){
    super.initState();

    _controllerFloatUp = AnimationController(vsync: this,duration: Duration(seconds: 4));
    _controllerGrowSize = AnimationController(vsync: this,duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controllerFloatUp.dispose();
    _controllerGrowSize.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late double _balloonHeight = MediaQuery.of(context).size.height / 2;
    late double _balloonWidth = MediaQuery.of(context).size.height / 3;
    late double _balloonBottomLocation = MediaQuery.of(context).size.height -
        _balloonHeight;
    _animationFloatUp = Tween(begin: _balloonBottomLocation, end: 0.0).
    animate(CurvedAnimation(parent: _controllerFloatUp, curve: Curves.linearToEaseOut));
    _animationGrowSize = Tween(begin: 50.0, end: _balloonWidth).
    animate(CurvedAnimation(parent: _controllerGrowSize, curve: Curves.elasticInOut));
    _controllerFloatUp.forward();
    _controllerGrowSize.forward();
    return AnimatedBuilder(
      animation: _animationFloatUp,
      builder: (context, child) {
        return Container(
          child: child,
          margin: EdgeInsets.only(
            top: _animationFloatUp.value,
          ),
          width: _animationGrowSize.value,
        );
      },
      child: GestureDetector(
        onTap: () {
          if (_controllerFloatUp.isCompleted) {
            _controllerFloatUp.reverse();
            _controllerGrowSize.reverse();
          }
          else {
            _controllerFloatUp.forward();
            _controllerGrowSize.forward();
          }
        },
        child: Image.asset(
            'assets/images/balloons.png',
            height: _balloonHeight,
            width: _balloonWidth),
      ),
    );
  }
}
