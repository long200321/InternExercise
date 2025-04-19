import 'package:flutter/material.dart';
class SliverAppbar extends StatelessWidget {
  const SliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Container(
        child: Image.asset('assets/images/logo.png',fit: BoxFit.cover,),
      ),
      title: Text("data"),
      backgroundColor: Colors.lightGreen,
      expandedHeight: 250,
      forceElevated: true,
      flexibleSpace: FlexibleSpaceBar(title: Text('Paralax Effect'),background: Image.asset('assets/images/garden.jpg',fit: BoxFit.cover,),),
      
    );
  }
}
