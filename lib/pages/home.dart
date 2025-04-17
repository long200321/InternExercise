import 'package:ch8_exercise/pages/mainpage.dart';
import 'package:ch8_exercise/pages/more.dart';
import 'package:flutter/material.dart';
import 'about.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _listPage = [];
  Widget _currentPage = Mainpage();
  int _currentIndex = 0;
  @override
  void initState(){
    super.initState();
    _listPage..
    add(Mainpage())..add(MorePage())..add(AboutPage());

  }
  void _changePage(int currentIndex){
    setState(() {
      _currentIndex = currentIndex;
      _currentPage = _listPage[_currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPage,
      bottomNavigationBar: BottomNavigationBar(currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Exercise',icon: Icon(Icons.book)),
            BottomNavigationBarItem(label: 'About',icon: Icon(Icons.info)),
          ],
      onTap: (currentIndex)=>{_changePage(currentIndex)},),
    );
  }
}
