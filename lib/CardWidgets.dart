import 'package:flutter/material.dart';
class IconWidgetContainer extends StatelessWidget {

  IconWidgetContainer({this.label,this.icon}){}
  final IconData icon;
  final colour=Color(0xFF8D8E98);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: colour,
          ),
        ),
      ],
    );
  }
}
