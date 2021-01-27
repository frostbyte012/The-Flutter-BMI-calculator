import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MyWidgets.dart';
class Gesture1 extends StatelessWidget {
  Gesture1({this.chi,this.colour1,this.colour2,this.lab}){}
  final String lab;
  final Widget chi;
  final colour1,colour2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Expanded(child: Repeated(colour1:colour1,chi: FontAwesomeIcons.mars,label:lab,),),
      onTap:() {
      }
      );
    }
  }
