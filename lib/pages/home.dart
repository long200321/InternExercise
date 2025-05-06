import 'package:flutter/material.dart';
import 'package:untitled1/services/auth.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Auth check = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed:(){check.authentication(context);}, child: Text('data')),),
    );
  }
}
