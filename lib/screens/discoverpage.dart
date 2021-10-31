import 'package:contactapp/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Discover extends StatefulWidget {
  const Discover({Key key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<Data> data = [
    Data(title: "Smart", img: AssetImage("images/n1.png"), price: "#500"),
    Data(title: "Smart", img: AssetImage("images/n2.png"), price: "#500"),
    Data(title: "Smart", img: AssetImage("images/n3.png"), price: "#500"),
    Data(title: "Smart", img: AssetImage("images/e1.png"), price: "#500"),
    Data(title: "Smart", img: AssetImage("images/e2.png"), price: "#500"),
    Data(title: "Smart", img: AssetImage("images/j1.png"), price: "#500"),
    Data(title: "Smart", img: AssetImage("images/k.png"), price: "#500"),
  ];

  @override
  Widget build(BuildContext context) {
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
              child: Row(children: [
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.h),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.h),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.h),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.h),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.h),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

Widget imageContainer({
  String title,
  ImageProvider img,
}) {
  return Container(
    height: 360.0.h,
    width: 350.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      color: Color(0x306c6c6c),
    ),
    child: Column(
      children: [
        Container(
          height: 320.h,
          child: Image(
            image: img,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

//
//
// ListView.builder(
// //shrinkWrap: true,
// scrollDirection: Axis.vertical,
// itemCount: data.length,
// itemBuilder: (context, index) {
// return ListTile(
// leading: Container(
// height: 20.0,
// width: 20.0,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10.r),
// color: Color(0x306c6c6c),
// ),
// child: Image(image: data[index].img),
// ),
// title: Text(data[index].title),
// subtitle: Text(data[index].price),
// trailing: Icon(Icons.favorite_border_outlined),
// );
// },
// ),
