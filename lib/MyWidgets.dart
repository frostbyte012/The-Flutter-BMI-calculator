import 'package:flutter/material.dart';
import 'CardWidgets.dart';
class Repeated extends StatelessWidget {
  Repeated({this.colour1,this.chi,this.label,this.OnPage}){}
   final Color colour1;
   final IconData chi;
   final String label;
   Function OnPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPage,
      child: Container(
        child: Container(
          margin: EdgeInsets.only(top:40.0),
          child: Center(
            child: IconWidgetContainer(label: label,icon: chi,),
          ),
        ),
        margin: EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: colour1,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

