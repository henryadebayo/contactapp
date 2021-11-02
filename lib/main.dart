import 'package:contactapp/screens/deatail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DetailsPage(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 640),
    );
  }
}
