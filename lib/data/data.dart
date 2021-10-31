import 'package:flutter/material.dart';

class Data {
  final String title;
  final String price;
  final ImageProvider img;

  Data({
    this.img,
    this.title,
    this.price,
  });
}

List<Data> data = [
  Data(title: "Smart", img: AssetImage("images/n1.png"), price: "#500"),
  Data(title: "Smart", img: AssetImage("images/n2.png")),
  Data(title: "Smart", img: AssetImage("images/n3.png"), price: "#500"),
  Data(title: "Smart", img: AssetImage("images/e1.png"), price: "#500"),
  Data(title: "Smart", img: AssetImage("images/e2.png"), price: "#500"),
  Data(title: "Smart", img: AssetImage("images/j1.png"), price: "#500"),
  Data(title: "Smart", img: AssetImage("images/k.png"), price: "#500"),
];
