import 'package:flutter/material.dart';
class Repeated1 extends StatelessWidget {
  Repeated1({this.colour,this.wii}){}
   Color colour;
   Widget wii;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top:40.0),
        child: Center(child: wii,//widget here
        ),
      ),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

