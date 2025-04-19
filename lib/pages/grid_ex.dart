import 'package:ch8_exercise/classes/grid_icon.dart';
import 'package:flutter/material.dart';
class GridEx extends StatelessWidget {
  const GridEx({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> _iconList = GridIcons().getIconList();
    return Scaffold(
      appBar: AppBar(title: Text('GridView Exercise'),),
      body: SafeArea(child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            child: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
                itemCount: 20,
                padding: EdgeInsets.all(10),
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    child: Column(
                      children: [
                        Icon(_iconList[index]),
                        Text('Icon $index'),
                      ],
                    ),
                  );
                }),
          )
        ],
      )),
    );
  }
}
