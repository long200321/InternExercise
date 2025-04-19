import 'package:ch8_exercise/widgets/drawer_mainpage.dart';
import 'package:ch8_exercise/widgets/sliver_fav_ex_list.dart';
import 'package:ch8_exercise/widgets/sliver_introduce_appbar_widget.dart';
import 'package:ch8_exercise/widgets/sliver_introduce_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/sliver_fav_theory_widget.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerMainpage(),
      body: SafeArea(child: CustomScrollView(
        slivers: [
          const SliverIntroduceAppbarWidget(),
          const SliverIntroduceWidget(),
          const SliverFavExList(),
          const SliverFavTheoryWidget(),
        ],
      ),),
    );
  }
}

class Picture1 extends StatelessWidget {
  final String introduce;

  const Picture1({super.key, required this.introduce});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
            tag: 'picture_1',
            child: Image.asset('assets/images/flutter_app_introduce.jpg'),
          ),
          Text(introduce, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
