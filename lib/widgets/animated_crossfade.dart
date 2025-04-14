import 'package:flutter/material.dart';
class AnimatedCrossfadeWidget extends StatefulWidget {
  const AnimatedCrossfadeWidget({super.key});

  @override
  State<AnimatedCrossfadeWidget> createState() => _AnimatedCrossfadeWidgetState();
}

class _AnimatedCrossfadeWidgetState extends State<AnimatedCrossfadeWidget> {
  bool _firstContainer = true;
  void _ContainerFade(){
    setState(() {
      _firstContainer = _firstContainer ? false : true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(children: [Stack(
      children: [
        AnimatedCrossFade(
            firstChild: Container(
              height: 100,
              width: 100,
              color: Colors.lightBlue,
            ),
            secondChild: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ) ,
            crossFadeState: _firstContainer ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 500),
            sizeCurve: Curves.decelerate,),
        Positioned.fill(child: TextButton(onPressed: _ContainerFade, child: Text('Press to change Widget')))
      ],
    )],);
  }
}
