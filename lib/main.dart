import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:punworld_app/routes/app_pages.dart';
import 'package:punworld_app/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:punworld_app/services/bindings/global_binding.dart';
import 'firebase_options.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.init,
      initialBinding: GlobalBinding(),
      getPages: AppPages.routes,
    );
  }

}