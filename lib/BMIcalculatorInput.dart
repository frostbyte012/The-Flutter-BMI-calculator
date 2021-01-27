import 'package:flutter/material.dart';
import 'MyWidgets.dart';
import 'MyWidgets2.dart';
import 'BottomPageContainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ConstantParameters.dart';
import 'RawMatButtonWidget.dart';
import 'ScreenBMIResults.dart';
import 'dart:math';
enum GenderSelected {male,female}
class MyBMI extends StatefulWidget {
  @override
  MyBMIState createState() => MyBMIState();
}


class MyBMIState extends State<MyBMI>{

  final ColourBottomButton=Color(0xFFEB1555);
  final ContainerButtonsAll=Colors.black12;
  final height=80.0;
   int age=1;
   int weight=2;
   Color maleColor=Colors.black12;
   Color femaleColor=Colors.black12;
   Color active=Colors.black26;
   Color inactive=Colors.black12;
   GenderSelected contrl;
  int vheight=120;
  double bmicalculate;
  String recomnd;
  Widget normw;
  List<String> Recommend=[
    " You've lower weight than normal.Eat a bit more!",
    " You've a normal body weight. Good Job!",
    " You've higher weight than normal.Exercise"];
  List<Widget> norms=[
    Text("UnderWeight",style: TextStyle(
    color: Colors.deepOrange,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
     ),
    ),
    Text("Normal",
    style: TextStyle(
    color: Color(0xFF24D876),
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
     ),
    ),
    Text("OverWeight",style: TextStyle(
    color: Colors.red,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
     ),
    )];
  void func(double xlometer){
    setState(() {
      vheight=xlometer.round();
      print(vheight);
    });
  }
   void control()
  {
    setState(() {
        maleColor = (contrl==GenderSelected.male)||(contrl!=GenderSelected.female)?active:inactive;
        femaleColor = (contrl==GenderSelected.female)||(contrl!=GenderSelected.male)?active:inactive;
      }
    );
  }
  void addage()
  {
    setState(() {
      if(age<149)
      age++;
    });
  }

  void subtrage()
  {
    setState(() {
      if(age>1)
      age--;
    });
  }

  void addweight()
  {
    setState(() {
      if(weight<200)
      weight++;
    });
  }

  void subtrweight()
  {
    setState(() {
     if(weight>1)
        weight--;
    });
  }
  void calculateBmi(int x,double y){

       bmicalculate=x/pow(y/100, 2);
       bmicalculate=bmicalculate.roundToDouble();
       if(bmicalculate>25.0)
         {
             normw=norms[2];
             recomnd=Recommend[2];
         }
       else if(bmicalculate>=18 && bmicalculate<=25.0)
       {
         normw=norms[1];
         recomnd=Recommend[1];
       }
       else {
         normw=norms[0];
         recomnd=Recommend[0];
       }

  }
  void nav(){
    calculateBmi(weight,height);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Results(norm: normw,recommendations: recomnd,bmi: bmicalculate,)));
    print("result working!");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("BMI Calculator"),

        ),
      body:Column(
        children: [
         Expanded(
             child:Row(

                      children:<Widget>[
                            Expanded(
                                child: Repeated(colour1: maleColor,chi: FontAwesomeIcons.mars,label: "MALE",OnPage: (){   contrl=GenderSelected.male;
                                control();
                                print("working 1");},),
                               ),
                           Expanded(
                             child:Repeated(colour1: femaleColor,chi: FontAwesomeIcons.venus,label: "FEMALE",OnPage: (){ contrl=GenderSelected.female;
                             control();
                             print("working 2");},),
                              ),
                      ],
            ),
         ),
         Expanded(child:Repeated1(colour: ContainerButtonsAll,wii:Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("HEIGHT",
               style: TextStyle(
                 fontSize: 18.0,
                 color:Color(0xFF8D8E98),
               ),
             ),
             SizedBox(
               height:7.0,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment:CrossAxisAlignment.baseline,
               children: [
                 Text(
                   vheight.toString(),
                   style: kNumberTextStyle,
                 ),
                 Text("cm",style:kLabeTextStyle,),
               ],),
             SliderTheme(
              data: SliderThemeData(
                activeTrackColor:Colors.white,
                inactiveTrackColor:Color(0xFF8D8E98),
                thumbColor:Color(0xFFEB1555),
                overlayColor: Color(0x29EB1555),
                thumbShape:RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
               child: Slider(
                 value:vheight.toDouble(),
                 min: 120.0,
                 max: 220.0,
                 onChanged:func,
               ),
             ),

           ],
         ),),),
         Expanded(
             child:Row(
               children:<Widget> [
                            Expanded(child:
                            Repeated1(
                              colour: ContainerButtonsAll,
                              wii:MyRawMaterialButton(labl:"WEIGHT",
                                info: weight,
                                funAdd:addweight,
                                funSubtrct: subtrweight,
                                ico1: FontAwesomeIcons.minus,
                                ico2: FontAwesomeIcons.plus,
                              ),
                             ),
                            ),
                            Expanded(child: Repeated1(colour: ContainerButtonsAll,
                              wii:MyRawMaterialButton(
                                labl:"AGE",
                                info: age,
                                funAdd:addage,
                                funSubtrct: subtrage,
                                ico1: FontAwesomeIcons.minus,
                                ico2: FontAwesomeIcons.plus,
                              ),
                             ),
                            ),
               ],
             ),
         ),
          BottomPageContainer(ColourBottomButton,height,nav,"CALCULATE"),
        ],
      ),

    );
  }
}

