import 'package:flutter/material.dart';
class AnimationEx extends StatefulWidget {
  const AnimationEx({super.key});

  @override
  State<AnimationEx> createState() => _AnimationExState();
}

class _AnimationExState extends State<AnimationEx> with TickerProviderStateMixin{
  double _width = 100;
  bool _firstObj = true;
  double _opacity = 1;
  late AnimationController _floatUpController;
  late AnimationController _growUpController;
  late Animation _floatUp;
  late Animation _growUp;

  @override
  void initState(){
    super.initState();
    _floatUpController = AnimationController(vsync: this,duration: Duration(seconds: 4));
    _growUpController = AnimationController(vsync: this,duration: Duration(seconds: 2));

  }
  @override
  void dispose() {
    _floatUpController.dispose();
    _growUpController.dispose();
    super.dispose();
  }
  void _opacityChange(){
    setState(() {
      _opacity = _opacity >=1? 0.3:1;
    });
  }
  void _showFirst(){
    setState(() {
      _firstObj = _firstObj ? false : true;
    });
  }
  void _increaseSize(){
    setState(() {
      _width = _width==350? 100:_width+=50;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    late double _balloonHeight = MediaQuery.of(context).size.height / 2;
    late double _balloonWidth = MediaQuery.of(context).size.height / 3;
    late double _balloonBottomLocation = MediaQuery.of(context).size.height -
        _balloonHeight;
    _floatUp = Tween(begin: _balloonBottomLocation, end: 0.0).
    animate(CurvedAnimation(parent: _floatUpController, curve: Curves.fastOutSlowIn));
    _growUp = Tween(begin: 50.0, end: _balloonWidth).
    animate(CurvedAnimation(parent: _growUpController, curve: Curves.elasticInOut));
    _floatUpController.forward();
    _growUpController.forward();
    return Scaffold(
      appBar: AppBar(title: Text('Animation Exercise'),),
      body: SafeArea(child: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(duration: Duration(milliseconds: 500),
            child: TextButton(onPressed: _increaseSize,
                child: Text('Tap me')),
            width: _width,
            curve: Curves.linearToEaseOut,
            color: Colors.lightGreen,),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Stack(
            children: [
              AnimatedCrossFade(firstChild: Container(
                color: Colors.lightBlue,
                width: 100,
                height: 100,
              ),
                secondChild: Container(
                  color: Colors.purpleAccent,
                  width: 200,
                  height: 200,
                ),
                crossFadeState: _firstObj ? CrossFadeState.showFirst: CrossFadeState.showSecond,
                duration: Duration(milliseconds: 500),
                sizeCurve: Curves.bounceInOut,
              ),
              Positioned.fill(child: TextButton(onPressed: (){_showFirst();}, child: Text('Tap me'))
              )
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          AnimatedOpacity(opacity: _opacity,
              duration: Duration(milliseconds: 500),
              curve: Curves.decelerate,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
                child: TextButton(onPressed: (){_opacityChange();}, child: Text('Tap me')),
              ),),
          Center(
            child: AnimatedBuilder(
              animation: _floatUp,
              builder: (context, child) {
                return Container(
                  child: child,
                  margin: EdgeInsets.only(
                    top: _floatUp.value,
                  ),
                  width: _growUp.value,
                );
              },
              child: GestureDetector(
                onTap: () {
                  if (_floatUpController.isCompleted) {
                    _floatUpController.reverse();
                    _growUpController.reverse();
                  }
                  else {
                    _floatUpController.forward();
                    _growUpController.forward();
                  }
                },
                child: Image.asset(
                    'assets/images/balloons.png',
                    height: _balloonHeight,
                    width: _balloonWidth),
              ),
            ) ,
          ),
        ],
      ),)),
    );
  }
}
