import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Offset _startLastOffset = Offset.zero;
  Offset _lastOffset = Offset.zero;
  Offset _currentOffset = Offset.zero;
  double _lastScale = 1;
  double _currentScale = 1;
  void _onScaleStart(ScaleStartDetails details){
    _startLastOffset = details.focalPoint;
    _lastScale = _currentScale;
    _lastOffset = _currentOffset;
  }
  void _onScaleUpdate(ScaleUpdateDetails details){
    if(details.scale!=1){
      double currentScale = _lastScale*details.scale;
      if(currentScale <0.5){
        currentScale = 0.5;
      }
      setState(() {
        _currentScale = currentScale;
      });
    }
    else{
      if(details.scale==1){
        Offset lastOffset = (_startLastOffset - _lastOffset)/_lastScale;
        Offset currentOffset= details.focalPoint - (lastOffset*_currentScale);
        setState(() {
          _currentOffset = currentOffset;
        });
      }
    }
  }
  void _setScaleSmall(){
    setState(() {
      _currentScale = 0.5;
    });
  }
  void _setScaleBig(){
    setState(() {
      _currentScale = 16;
    });
  }
  void _onLongPress(){
    setState(() {
      _startLastOffset = Offset.zero;
      _lastOffset = Offset.zero;
      _currentOffset = Offset.zero;
      _lastScale = 1;
      _currentScale=1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InkWell'),),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return GestureDetector(
      onScaleStart: _onScaleStart,
      onScaleUpdate: _onScaleUpdate,
      onLongPress: _onLongPress,
      child: Stack(
        children: [
          _buildScaleAndMoving(),
          buildPositionInkWell(),
        ],
      ),
    );
  }

  Positioned buildPositionInkWell() {
    return Positioned(top: 0,width: MediaQuery.of(context).size.width,
        child: Container(
          height: 50,
          child: Row(children: [
            InkWell(
              onTap: _setScaleSmall,
              onDoubleTap: _setScaleBig,
              onLongPress: _onLongPress,
              splashColor: Colors.lightGreen,
          highlightColor: Colors.blue,
          child: Container(
          height: 48.0,
            width: 128.0,
            color: Colors.black12,
            child: Icon(
              Icons.touch_app,
              size: 32.0,
            ),
            )),
            InkResponse(
              splashColor: Colors.lightGreenAccent,
              highlightColor: Colors.lightBlueAccent,
              onTap: _setScaleSmall,
              onDoubleTap: _setScaleBig,
              onLongPress: _onLongPress,
              child: Container(
                height: 48.0,
                width: 128.0,
                color: Colors.black12,
                child: Icon(
                  Icons.touch_app,
                  size: 32.0,
                ),
              ),
            ),
          ],),
        ),);
  }

  Transform _buildScaleAndMoving() {
    return Transform.scale(
          scale: _currentScale,
          child: Transform.translate(offset: _currentOffset,child:
            Image.asset('assets/images/gift.jpg'),),
        );
  }
}
