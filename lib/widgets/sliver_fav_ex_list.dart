import 'package:ch8_exercise/pages/animation_ex.dart';
import 'package:ch8_exercise/pages/button_ex.dart';
import 'package:ch8_exercise/pages/tabbar_ex.dart';
import 'package:flutter/material.dart';
class SliverFavExList extends StatelessWidget {
  const SliverFavExList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate(
      List.generate(1, (int index){
        return Column(
          children: [
            Card(
              elevation: 0,
              color: Theme.of(context).canvasColor,
              child: Text('Bài tập tiêu biểu',style: TextStyle(fontSize: 30),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonEx()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/4,
                    decoration: BoxDecoration(boxShadow:
                    [BoxShadow(color: Colors.grey,blurRadius: 2,offset: Offset(0, 3))],
                        border: Border.all(width: 2),borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Image.asset('assets/images/button_exercise.png'),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimationEx()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/4,
                    decoration: BoxDecoration(boxShadow:
                    [BoxShadow(color: Colors.grey,blurRadius: 2,offset: Offset(0, 3))],
                        border: Border.all(width: 2),borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Image.asset('assets/images/animation_ex.png'),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TabbarEx()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/4,
                    decoration: BoxDecoration(boxShadow:
                    [BoxShadow(color: Colors.grey,blurRadius: 2,offset: Offset(0, 3))],
                        border: Border.all(width: 2),borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Image.asset('assets/images/tabbar_ex.png'),
                  ),
                ),
              ],
            ),
            Card(
              elevation: 0,
              color: Theme.of(context).canvasColor,
              child: Text('Lý thuyết tiêu biểu',style: TextStyle(fontSize: 30),),
            ),
          ],
        );
      })

    ));
  }
}
