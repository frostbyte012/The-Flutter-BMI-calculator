import 'package:bmi_calculator/Gesture1.dart';
import 'package:flutter/material.dart';
import 'ConstantParameters.dart';
import 'ScreenBMIResults.dart';
class BottomPageContainer extends StatelessWidget {
  BottomPageContainer(@required this.ColourForButton,@required this.Height,@required this.flo,@required this.tex){}
  final ColourForButton;
  final Height;
  final Function flo;
  String tex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: flo,
      child: Container(

        height: Height,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        color: ColourForButton,
        child:Center(
          child:Text(tex,style:TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}
