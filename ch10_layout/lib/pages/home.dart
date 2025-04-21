import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Layouts'),),
      leading: Icon(Icons.menu),
      actions: [Icon(Icons.cloud_outlined)],),
      body: _buildBody(),      
    );
  }
}

Widget _buildBody(){
  return SingleChildScrollView(
    child: Column(
      children: [
        _buildImageHeader(),
        SafeArea(child: Padding(padding: EdgeInsets.all(10),child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildParagraph(),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              _buildWeather(),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              _buildWeekendWeather(),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              _buildImageFooter()
            ],
          ),)),
      ],
    ),
  );
}

Row _buildImageFooter() {
  return Row(
              children: [
                CircleAvatar(maxRadius: 60,child: Icon(Icons.face),),
                CircleAvatar(maxRadius: 60,child: Icon(Icons.face_2),),
                CircleAvatar(maxRadius: 60,child: Icon(Icons.face_3),),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.access_alarm_rounded),
                      Icon(Icons.access_alarm_rounded),
                      Icon(Icons.access_alarm_rounded),
                    ],
                  ),
                )
              ],
            );
}

Wrap _buildWeekendWeather() {
  return Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 1,
              children: List.generate(7, (int index){
                return Chip(label: Text('Day ${index+1}',
                ),avatar: Icon(Icons.cloud_outlined),);
              })
            );
}

Row _buildWeather() {
  return Row(
              children: [
                Icon(Icons.sunny,size: 30,color: Colors.yellow,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('30*C Clear'),
                    Text('Quan Tan Phu, TP.HCM')
                  ],
                )
              ],
            );
}

Column _buildParagraph() {
  return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Header 1',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                Text('paragraph',style: TextStyle(fontSize: 20),),
              ],
            );
}

Center _buildImageHeader() => Center(child: Image.asset('assets/images/gift.jpg'),);

