import 'package:ch8_exercise/widgets/sliver_appbar.dart';
import 'package:ch8_exercise/widgets/sliver_grid_widget.dart';
import 'package:ch8_exercise/widgets/sliver_list_widget.dart';
import 'package:flutter/material.dart';
class CustomScrollviewEx extends StatelessWidget {
  const CustomScrollviewEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CustomScrollView Exercise'),),
      body: SafeArea(child: CustomScrollView(
        slivers: [
          SliverAppbar(),
          SliverListWidget(),
          SliverGridWidget(),
        ],
      ),)
    );
  }
}
