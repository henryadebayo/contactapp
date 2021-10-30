import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16.0.h, left: 18.0.w, right: 18.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Smart",
                      style: TextStyle(color: Colors.white, fontSize: 60.0.sp),
                    ),
                    Text(
                      "Shop",
                      style: TextStyle(color: Colors.white, fontSize: 60.0.sp),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    height: 470.0,
                    child: Image(
                      image: AssetImage("images/py.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                Container(
                  child: SizedBox(
                    height: 70.0,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(BorderSide()),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF1F1F1F)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.0.h)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20.0.w,
                          ),
                          Text(
                            "Get Started",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
