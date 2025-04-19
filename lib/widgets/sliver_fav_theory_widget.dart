import 'package:ch8_exercise/classes/strings.dart';
import 'package:ch8_exercise/pages/animation_ex.dart';
import 'package:ch8_exercise/pages/button_theory.dart';
import 'package:flutter/material.dart';
class SliverFavTheoryWidget extends StatelessWidget {
  const SliverFavTheoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _theory = Strings().theory;
    List<Widget> _listPage = [ButtonTheory(),AnimationEx(),ButtonTheory(),AnimationEx(),
      ButtonTheory(),AnimationEx(),];
    return SliverSafeArea(sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
            childCount: 6, (BuildContext contex, int index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (contex)=>_listPage[index]));
              },
              child: Container(
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.width/4,
                child: Text(_theory[index],textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),),
            ),
          );
        }),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3)));
  }
}