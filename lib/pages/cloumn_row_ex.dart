import 'package:flutter/material.dart';
class CloumnRowEx extends StatelessWidget {
  const CloumnRowEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column & Row Exercise'),),
      body: SafeArea(child: SingleChildScrollView(child: Column(children: [
 ColumnWidget(),
        Divider(),
         RowWidget(),
        Divider(),
         ColumnRowNestedWidget()
      ],),)),
    );
  }
}

class ColumnRowNestedWidget extends StatelessWidget {
  const ColumnRowNestedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Column 1'),
        Text('Column 2'),
        Row(children: [Text('Column 3'), Text('Column 3'), Text('Column 3'),],),
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Text('Row 1'),
        Text('Row 1'),
        Text('Row 1'),
      ],),
      Divider(),
      Row(children: [
        Text('Row 2'),
        Text('Row 2'),
        Text('Row 2'),
      ],),
      Divider(),
      Row(children: [
        Text('Row 3'),
        Text('Row 3'),
        Text('Row 3'),
      ],),
    ],);
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Column 1'),
      Text('Column 2'),
      Text('Column 3'),
    ],);
  }
}
