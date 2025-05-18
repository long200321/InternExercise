import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:punworld_app/widgets/appbar_widget.dart';
class Home extends GetView {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Trang chủ',isBack: false,),
      //body: SafeArea(child: ),
    );
  }
}
