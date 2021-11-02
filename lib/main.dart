import 'package:contactapp/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 640),
    );
  }
}
