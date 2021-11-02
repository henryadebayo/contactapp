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
            height: 15.h,
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
                width: 10.w,
              ),
              Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xffaa0505)),
              ),
              SizedBox(
                width: 10.w,
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
        ],
      ),
    );
  }
}
