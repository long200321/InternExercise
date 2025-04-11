import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child:
        Padding(padding: EdgeInsets.all(20),child:
          Column(children: [
            const ImageAndIconWidget(),
            Divider(),
            const BoxDecorationWidget(),
            Divider(),
            const InputDecorationWidget(),
            Divider(),
            
          ],),),)),
    );
  }
}

class ImageAndIconWidget extends StatelessWidget {
  const ImageAndIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image(
          image: AssetImage("assets/images/OIP.jpg"),
//color: Colors.orange,
          //fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width / 3,
        ),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/G-Dragon_in_February_2025.png/330px-G-Dragon_in_February_2025.png',
          width: MediaQuery.of(context).size.width/3,
        ),
        Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
      ],
    );
  }
}
class BoxDecorationWidget extends StatelessWidget {
  const BoxDecorationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow:[BoxShadow(
            blurRadius: 10,
            color: Colors.grey,
            offset: Offset(5, 10)
          )]
      )
    );
  }
}
class InputDecorationWidget extends StatelessWidget {
  const InputDecorationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Notes'),),
      Divider(),
      TextField(decoration: InputDecoration(hintText: 'Enter your note'),),
    ],);
  }
}



