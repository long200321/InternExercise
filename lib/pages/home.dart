import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Home'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        flexibleSpace: SafeArea(
          child: Icon(Icons.photo_camera, size: 75, color: Colors.red),
        ),
        bottom: const PopupMenuButtonWidget(),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[const ContainerWithBoxDecorationWidget(),
              Divider(),
              const ColumnWidget(),
              Divider(),
              const RowWidget(),
              Divider(),
              const ColumnAndRowNested(),
                Divider(),
                const ButtonWidget(),
                Divider(),
                const ButtonBarWidget(),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(10),
            ),
            gradient: LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.lightGreen.shade500],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 10,
                offset: Offset(0, 10.0),
              ),
            ],
          ),
        child: Center(child: RichText(text: TextSpan(
          text: 'Flutter World ',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dotted,
            ),
          children: [
            TextSpan(text: 'for',style: TextStyle(color: Colors.black)),
            TextSpan(text: 'Mobile',style:
            TextStyle(fontSize: 20,fontStyle: FontStyle.italic,
            color: Colors.purple)),
          ]
        ))),
        ),
      ],
    );
  }
}
class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('Column 1'),
        Divider(),
        Text('Column 2'),
        Divider(),
        Text('Column 3'),
      ],
    );
  }
}
class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Row 1'),
            Padding(padding: EdgeInsets.all(16.0),),
            Text('Row 2'),
            Padding(padding: EdgeInsets.all(16.0),),
            Text('Row 3'),
          ],
        ),
      ],
    );
  }
}
class ColumnAndRowNested extends StatelessWidget {
  const ColumnAndRowNested({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('Columns and Row Nesting 1',),
        Text('Columns and Row Nesting 2',),
        Text('Columns and Row Nesting 3',),
        Padding(padding: EdgeInsets.all(16.0),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Row Nesting 1'),
            Text('Row Nesting 2'),
            Text('Row Nesting 3'),

          ],
        ),
      ],
    );
  }
}
class PopupMenuButtonWidget extends StatelessWidget implements PreferredSizeWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<TodoMenuItem>(
      icon: Icon(Icons.view_list),
      onSelected: ((valueSelected) {
        print('valueSelected: ${valueSelected.title}');
      }),
      itemBuilder: (BuildContext context) {
        return foodMenuList.map((TodoMenuItem todoMenuItem) {
          return PopupMenuItem<TodoMenuItem>(
            value: todoMenuItem,
            child: Row(
              children: <Widget>[
                Icon(todoMenuItem.icon.icon),
                Padding(padding: EdgeInsets.all(8.0),),
                Text(todoMenuItem.title),
              ],
            ),
          );
        }).toList();
      },
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(75);
}
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Row(children: [
        Padding(padding: EdgeInsets.all(20)),
        TextButton(onPressed: (){}, child: Text('Button1')),
        TextButton.icon(onPressed: (){}, label: Text(''),
          icon: Icon(Icons.add,color: Colors.yellow,),
          style: TextButton.styleFrom(backgroundColor: Colors.red),)
      ],),
      Row(children: [
        Padding(padding: EdgeInsets.all(20)),
        ElevatedButton(onPressed: (){}, child: Text('Button2')),
        ElevatedButton.icon(onPressed: (){}, label: Text('Button2'),icon: Icon(Icons.abc),),
      ],),
        Row(children: [
          Padding(padding: EdgeInsets.all(20)),
          IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit_rounded),tooltip: 'Button3',),
          IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit_rounded),),

        ],)],
    );
  }
}
class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add_alarm)),
        IconButton(
          icon: Icon(Icons.brush),
          highlightColor: Colors.purple,
          onPressed: () {},
        ),
        ElevatedButton(onPressed: (){}, child: Text('data'))
      ],
    );
  }
}



class TodoMenuItem {
  final String title;
  final Icon icon;
  TodoMenuItem({required this.title, required this.icon});


}
List<TodoMenuItem> foodMenuList = [
  TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.fastfood)),
  TodoMenuItem(title: 'Remind Me', icon: Icon(Icons.add_alarm)),
  TodoMenuItem(title: 'Flight', icon: Icon(Icons.flight)),
  TodoMenuItem(title: 'Music', icon: Icon(Icons.audiotrack)),
];


