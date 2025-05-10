import 'package:flutter/material.dart';
import 'package:untitled/pages/more.dart';
import 'package:untitled/services/notification.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState(){
    super.initState();
    listenToNotificationStream();

  }
  void listenToNotificationStream(){
    NotificationService.streamController.stream.listen((response){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>More(response:response,)));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child: Center(child: Column(children: [
        ElevatedButton(onPressed: (){NotificationService.showNotification();}, child: Text('BasicNoti')),
        ElevatedButton(onPressed: (){NotificationService.showRepeatNotification();}, child: Text('RepeatNoti')),
        ElevatedButton(onPressed: (){NotificationService.showScheduledNotification();}, child: Text('ScheduledNoti')),
        ElevatedButton(onPressed: (){NotificationService.cancelNoti();}, child: Text('Cancel Repeat')),

      ],)),)
    );
  }
}
