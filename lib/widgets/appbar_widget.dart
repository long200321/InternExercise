import 'package:flutter/material.dart';
import 'package:punworld_app/widget_styles/widget_style.dart';
import 'package:punworld_app/constants/index.dart';
import 'package:punworld_app/widgets/index.dart';
class AppbarWidget extends StatelessWidget implements PreferredSizeWidget{
  AppbarWidget({super.key, this.isBack=true, required this.title});
  bool isBack;
  String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isBack?backIcon:null,
      title: Text(title??'',style: WidgetStyle.titleAppbar,),
      backgroundColor: blueApp,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}