import 'package:flutter/material.dart';
import 'package:ch8_exercise/classes/strings.dart';
class SliverIntroduceWidget extends StatelessWidget {
  const SliverIntroduceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Strings _introduce = Strings();
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Text('Introduce',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/2,
                child: Text(_introduce.introduce,overflow: TextOverflow.ellipsis,maxLines: 5,
                style: TextStyle(fontSize: 16),),
              ),
              Expanded(child:
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Picture1()));
                },
                child: Hero(tag: 'picture1', child: Image.asset('assets/images/flutter_app_introduce.jpg')),)),
            ],
          )
        ],
      ),
    );
  }
}
class Picture1 extends StatelessWidget {
  const Picture1({super.key});

  @override
  Widget build(BuildContext context) {
    Strings _introduce = Strings();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Column(
        children: [
          Hero(tag: 'picture1', child: Image.asset('assets/images/flutter_app_introduce.jpg')),
          Text(_introduce.introduce,style: TextStyle(fontSize: 30),)
        ],
      )),
    );
  }
}

