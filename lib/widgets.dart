import 'package:flutter/material.dart';
Widget BrandName(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("Theme", style: TextStyle(color: Colors.black),),
      Text("Board",style: TextStyle(color: Colors.grey[400]),)
    ],);
}
