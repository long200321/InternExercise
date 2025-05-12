import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ex/services/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_ex/pages/wrapped.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({super.key});@override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthenticateService().user,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapped(),
      ),
    );
  }}