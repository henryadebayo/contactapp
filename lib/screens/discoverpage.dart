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
      imageContainer(),
      imageContainer(),
      imageContainer(),
      imageContainer(),
      imageContainer(),
      imageContainer(),
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
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListView();
              },
            )
          ],
        ),
      ),
    );
  }
}

Widget imageContainer() {
  return Container(
    height: 50.h,
    width: 50.h,
    decoration: BoxDecoration(
      color: Color(0x00000000),
      borderRadius: BorderRadius.circular(10.0.r),
    ),
    child: Column(
      children: [
        Image(
          image: AssetImage("images/darkwatch.jpg"),
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
