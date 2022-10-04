import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_course/utils/myBindings.dart';
import 'package:getx_course/view/home.dart';
import 'package:getx_course/view/screenOne.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          primarySwatch: Colors.blue,
          buttonColor: Colors.lightBlue
      ),
      home: HomePage(),
      // initialBinding: MyBindings(),
      getPages: [
        GetPage(name: '/one', page: () => ScreenOne()),
      //  GetPage(name: '/one', page: () => ScreenOne(), binding: MyBindings()),
      ],
    );
  }
}

