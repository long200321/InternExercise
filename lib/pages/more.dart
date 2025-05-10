import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class More extends StatelessWidget {
  const More({super.key, required this.response});
final NotificationResponse response;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hihi'),),
      body: SafeArea(child: Center(child: 
        Text('${response.id},${response.payload}'),)),
    );
  }
}
