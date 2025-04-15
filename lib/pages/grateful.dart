import 'package:flutter/material.dart';
class GratefulPage extends StatefulWidget {
  final int selectedButtonID = -1;
  const GratefulPage({super.key});

  @override
  State<GratefulPage> createState() => _GratefulPageState();
}

class _GratefulPageState extends State<GratefulPage> {
  late String _result;
  late int _selectedButtonID;
  List<String> _nameList = [];

  @override
  void initState(){
    super.initState();
    _selectedButtonID=widget.selectedButtonID;
    _nameList..add('Long')..add('Huyen');

  }
  void _radioButtonOnChanged(int index){
    setState(() {
      _selectedButtonID = index;
      _result = _nameList[index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grateful'),actions: [
        IconButton(onPressed: (){Navigator.pop(context, _result);}, icon: Icon(Icons.check)),
      ],),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
        child: Row(children: [
          Radio(value: 0, groupValue: _selectedButtonID, onChanged: (index){_radioButtonOnChanged(index!);}),
          Text('Long'),
          Radio(value: 1, groupValue: _selectedButtonID, onChanged: (index){_radioButtonOnChanged(index!);}),
          Text('Huyen'),
        ],),),)),
    );
  }
}
