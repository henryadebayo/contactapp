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
    Data(title: "Smart", img: AssetImage("images/e2.png"), price: "#5,000"),
    Data(title: "Smart", img: AssetImage("images/k.png"), price: "#800"),
    Data(title: "Smart", img: AssetImage("images/n2.png"), price: "#300"),
    Data(title: "Smart", img: AssetImage("images/n3.png"), price: "#2,000"),
    Data(title: "Smart", img: AssetImage("images/n1.png"), price: "#500"),
    Data(title: "Smart", img: AssetImage("images/e1.png"), price: "#7,000"),
    Data(title: "Smart", img: AssetImage("images/j1.png"), price: "#15,00"),
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
              height: 30.0.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.w),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.w),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.w),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.w),
                imageContainer(
                  title: "Smart",
                  img: AssetImage("images/n1.png"),
                ),
                SizedBox(width: 10.0.w),
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
            SizedBox(height: 20.0.h),
            Container(
              height: 100.h,
              child: ListView.builder(
                //shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color(0x306c6c6c),
                            ),
                            child: Image(image: data[index].img),
                          ),
                          Column(
                            children: [
                              Text(
                                data[index].title,
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                data[index].price,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0.h),
                    ],
                  );
                },
              ),
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
    height: 340.0.h,
    width: 320.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(60.r),
      color: Color(0x306c6c6c),
    ),
    child: Column(
      children: [
        Container(
          height: 300.h,
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
