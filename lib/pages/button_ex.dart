import 'package:flutter/material.dart';
class ButtonEx extends StatefulWidget {
  const ButtonEx({super.key});

  @override
  State<ButtonEx> createState() => _ButtonExState();
}

class _ButtonExState extends State<ButtonEx> {
  List<MenuItem> listItems =
  [MenuItem(title: 'Cake',icon: Icon(Icons.cake)),
  MenuItem(title: 'Setting',icon: Icon(Icons.settings)),
  MenuItem(title: 'Gratitude',icon: Icon(Icons.sentiment_satisfied)),
  MenuItem(title: 'Time',icon: Icon(Icons.timer))];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Exercise'),),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            ButtonExWidget(),
            Divider(),
            Row(
              children: [
                Text('PopUpMenuButton: '),
                PopupMenuButton(itemBuilder: (BuildContext context)
                {
                  return listItems.map((MenuItem items) {
                    return PopupMenuItem<MenuItem>(
                      value: items,
                      child: Row(
                        children: <Widget>[
                          Icon(items.icon.icon),
                          Padding(padding: EdgeInsets.all(8.0),),
                          Text(items.title),
                        ],
                      ),
                    );
                  }).toList();
                })
              ],
            ),
          ],
        )
      )),
    );
  }
}

class MenuItem{
  final String title;
  final Icon icon;
  MenuItem({required this.title,required this.icon});
}

class ButtonExWidget extends StatelessWidget {
  const ButtonExWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('TextButton: '),
            TextButton(onPressed: (){}, child: Text('Button1')),
            TextButton.icon(onPressed: (){},icon: Icon(Icons.add), label: Text('Button1')),
          ],
        ),
        Divider(),
        Row(
          children: [
            Text('IconButton: '),
            IconButton(onPressed: (){}, tooltip: 'Button2',icon: Icon(Icons.abc),),
            IconButton(onPressed: (){},icon: Icon(Icons.add),color: Colors.red,tooltip: 'Button2'),
          ],
        ),
        Divider(),
        Row(
          children: [
            Text('ElevatedButton: '),
            ElevatedButton(onPressed: (){},child: Text('Button3'),),
            ElevatedButton.icon(onPressed: (){},icon: Icon(Icons.access_alarm_rounded),label: Text('Button3'),),
          ],
        ),
        Divider(),
        Row(
          children: [
            Text('ButtonBar: '),
            ButtonBar(children: [
              TextButton.icon(onPressed: (){},icon: Icon(Icons.add), label: Text('Button1')),
              IconButton(onPressed: (){},icon: Icon(Icons.add),color: Colors.red,tooltip: 'Button2',),
              ElevatedButton.icon(onPressed: (){},icon: Icon(Icons.access_alarm_rounded),label: Text('Button3'),),

            ],),
          ],
        ),

      ],
    );
  }
}
