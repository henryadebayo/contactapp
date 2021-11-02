import 'package:contactapp/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<Data> data = [
    Data(title: "Smart", img: AssetImage("images/j2.png"), price: "#15,00"),
    Data(title: "Smart", img: AssetImage("images/e2.png"), price: "#5,000"),
    Data(title: "Smart", img: AssetImage("images/k.png"), price: "#800"),
    Data(title: "Smart", img: AssetImage("images/n2.png"), price: "#300"),
    Data(title: "Smart", img: AssetImage("images/j3.png"), price: "#15,00"),
    Data(title: "Smart", img: AssetImage("images/n3.png"), price: "#2,000"),
    Data(title: "Smart", img: AssetImage("images/n1.png"), price: "#500"),
    Data(title: "Smart", img: AssetImage("images/e1.png"), price: "#7,000"),
    Data(title: "Smart", img: AssetImage("images/j1.png"), price: "#15,00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: <Widget>[
          Icon(
            Icons.more_vert_outlined,
            color: Colors.black,
            size: 24.0,
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 400.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image(
                  image: AssetImage("images/j2.png"),
                ),
                Image(
                  image: AssetImage("images/j1.png"),
                ),
                Image(
                  image: AssetImage("images/j3.png"),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10.h,
                width: 15.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.black12),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                height: 10.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.black),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                height: 10.h,
                width: 15.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.black12),
              )
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.black12),
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xffaa0505)),
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Marvel Smart 2",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: Colors.black),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17.sp),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0.h),
          Container(
            height: 80.0,
            child: SingleChildScrollView(
              child: Text(
                "PREMIUM DISPLAY: Large 1.55-inch TFT-LCD color touch screen which has 320*360 pixels resolution make the screen clear and bright. The screen brightness can be adjusted, display screen will be lightened up automatically while lifting the wrist. Features different customized displays fo different styles, with the option to choose your own photo for background. Wake up function to easily see time, date, steps, calories and distance. IP68 waterproof, you can wear it when swimming and record data.",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17.sp),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
