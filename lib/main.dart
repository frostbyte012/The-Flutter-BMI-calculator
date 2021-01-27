import 'package:flutter/material.dart';
import 'BMIcalculatorInput.dart';
void main()=>runApp(BMIcalculator(),);

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBMI(),
      theme: ThemeData.dark(),
    );
  }
}
