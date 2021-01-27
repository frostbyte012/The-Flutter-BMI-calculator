import 'package:flutter/material.dart';
import 'ConstantParameters.dart';
class MyRawMaterialButton extends StatelessWidget {
  MyRawMaterialButton({this.labl,this.info,this.funAdd,this.funSubtrct,this.ico1,this.ico2});
  final String labl;
  final int info;
  final Function funAdd,funSubtrct;
  final IconData ico1,ico2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(labl,style:kLabeTextStyle,),
        Text(info.toString(),style: kNumberTextStyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RawMaterialButton(
              onPressed:funSubtrct,
              elevation:16.0,
              child:Icon(ico1),
              constraints: BoxConstraints.tightFor(
                width: 56.0,
                height: 56.0,
              ),
              fillColor: Color(0xFF4C4F5E),
              shape:CircleBorder(),
            ),
            SizedBox(width: 10.0,),
            RawMaterialButton(
              onPressed:funAdd,
              elevation:16.0,
              child:Icon(ico2),
              constraints: BoxConstraints.tightFor(
                width: 56.0,
                height: 56.0,
              ),
              fillColor: Color(0xFF4C4F5E),
              shape:CircleBorder(),
            ),
          ],
        ),
      ],
    );
  }
}
