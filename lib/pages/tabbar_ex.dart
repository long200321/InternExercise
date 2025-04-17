import 'package:ch8_exercise/pages/cake.dart';
import 'package:ch8_exercise/pages/gratitude.dart';
import 'package:ch8_exercise/pages/reminder.dart';
import 'package:flutter/material.dart';
class TabbarEx extends StatefulWidget {
  const TabbarEx({super.key});

  @override
  State<TabbarEx> createState() => _TabbarExState();
}

class _TabbarExState extends State<TabbarEx> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TabBar Exercise'),),
      body: TabBarView(controller: _tabController,
        children: [
          Cake(),
          Reminder(),
          Gratitude()
        ],),
      bottomNavigationBar: TabBar(controller: _tabController,
        tabs: [
        Tab(icon: Icon(Icons.cake),text: 'Cake',),
        Tab(icon: Icon(Icons.timer),text: 'Reminder',),
        Tab(icon: Icon(Icons.sentiment_satisfied),text: 'Gratitude',),
      ],),
    );
  }
}
