import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Discover extends StatefulWidget {
  const Discover({Key key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items;
    items = [
      imageContainer(),
      SizedBox(
        width: 30.0.w,
      ),
      imageContainer(),
      SizedBox(
        width: 30.0.w,
      ),
      imageContainer(),
      SizedBox(
        width: 30.0.w,
      ),
      imageContainer(),
      SizedBox(
        width: 30.0.w,
      ),
      imageContainer(),
      SizedBox(
        width: 30.0.w,
      ),
      imageContainer(),
      SizedBox(
        width: 30.0.w,
      ),
      imageContainer(),
      SizedBox(
        width: 30.0.w,
      ),
      imageContainer(),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,

        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 18.0.w),
            child: Icon(
              Icons.sort_sharp,
              color: Colors.white,
            ),
          ),
        ],
        //elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Discover",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Icon(Icons.search_rounded, color: Colors.white)
              ],
            ),
            SizedBox(
              height: 50.0.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: items),
            ),
          ],
        ),
      ),
    );
  }
}

Widget imageContainer() {
  return Container(
    height: 400.0,
    width: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      color: Color(0x306c6c6c),
    ),
    child: Column(
      children: [
        Container(
          height: 350,
          child: Image(
            image: AssetImage("images/n1.png"),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'Title',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
