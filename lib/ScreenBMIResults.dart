import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ConstantParameters.dart';
import 'BottomPageContainer.dart';
class Results extends StatelessWidget {
  Results({@required this.norm,@required this.recommendations,@required this.bmi});
  @override
  final String recommendations;
  final Widget norm;
  final double bmi;
  Widget build(BuildContext context) {
    void nav1(){
      Navigator.pop(context);
      print("result working!");
    }
    return MaterialApp(
      home:SafeArea(
        child: Scaffold(
          //appBar:AppBar(title: Text("BMI Calculator"),),
          body:Column(
            children: [
              Expanded(
                    flex:1,
                    child: Container(child: Text("Your Results",style:kTitlteTextstyle,),margin: EdgeInsets.fromLTRB(10.0,15.0,0.0,0.0),)

              ),
              Expanded(
                  flex: 7,
                 child: Container(
                      width: double.infinity,
                      color:Colors.black26,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          norm,
                          SizedBox(height:150,),
                          Text(bmi.toString(),style: kBMITextstyle,),
                          SizedBox(height:110,),
                          Text(recommendations,style: kBodytextStyle,),
                              ],
                      ),
                    ),


              ),
              Expanded(child:BottomPageContainer(KBottomContainerColor,kBottomContainerHeight,nav1,"BACK"),)
            ],
          )
        ),
      ),
      theme: ThemeData.dark(),
    );
  }
}

