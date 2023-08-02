import 'package:flutter/material.dart';

class AddItem {
  final String img;
  final String text1;
  final String text2;
  final Color color;

  AddItem(
      {required this.img,
      required this.color,
      required this.text1,
      required this.text2});
}

List<AddItem> list = [
  AddItem(
      color: Colors.red,
      text1: 'Converse X OPI Chuck Taylor',
      img: "images/1.png",
      text2: "\$249"),
  AddItem(
      color: Colors.blue,
      text1: 'Nike air Jordan 1 Retro High',
      img: "images/1.png",
      text2: "\$234"),
  AddItem(
      color: Colors.red,
      text1: 'Converse X OPI Chuck Taylor',
      img: "images/1.png",
      text2: "\$259")
];
