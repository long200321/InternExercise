import 'package:flutter/material.dart';
import 'package:ch8_exercise/pages/button_theory.dart';
class DrawerMainpage extends StatelessWidget {
  const DrawerMainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(decoration: BoxDecoration(color: Colors.lightBlue),child: Text('Options'),),
          ListTile(
            title: Text('Lý thuyết',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Divider(),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              title: Text('Button'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTheory()));
              },
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              title: Text('Animation'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTheory()));
              },
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              title: Text('Navigator'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTheory()));
              },
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              title: Text('Images'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTheory()));
              },
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              title: Text('Decoration'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTheory()));
              },
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          ListTile(
            title: Text('Tùy chỉnh',style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Divider(),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              title: Text('Cài đặt'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTheory()));
              },
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              title: Text('Liên hệ'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTheory()));
              },
            ),
          ),
        ],
      )
    );
  }
}
