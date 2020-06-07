import 'package:bmi_calculator/Button.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/iconContent.dart';
import 'package:bmi_calculator/reusableWidget.dart';
import 'constants.dart';
import 'brain.dart';
import 'bottom_button.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;
  // Color maleCardColor=inactiveWidgetColor,femaleCardColor=inactiveWidgetColor;
  /* void updateColor(Gender selectedGender){
    if(selectedGender==Gender.male){
      if(maleCardColor==inactiveWidgetColor){
        maleCardColor=activeWidgetColor;
        femaleCardColor=inactiveWidgetColor;
      }
      else
        {
          maleCardColor=inactiveWidgetColor;
        }
    }
    else if(selectedGender==Gender.female){
      if(femaleCardColor==inactiveWidgetColor){
        femaleCardColor=activeWidgetColor;
        maleCardColor=inactiveWidgetColor;
      }
      else
      {
        femaleCardColor=inactiveWidgetColor;
      }
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                          //updateColor(Gender.male);
                        });
                      },
                      child: ReUsableCard(
                        colour: selectedGender == Gender.male
                            ? kActiveWidgetColor
                            : kInactiveWidgetColor,
                        cardChild: iconContent(
                          iconName: FontAwesomeIcons.male,
                          textInput: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                          //updateColor(Gender.female);
                        });
                      },
                      child: ReUsableCard(
                        colour: selectedGender == Gender.male
                            ? kInactiveWidgetColor
                            : kActiveWidgetColor,
                        cardChild: iconContent(
                          iconName: FontAwesomeIcons.female,
                          textInput: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReUsableCard(
                colour: kActiveWidgetColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kTextLabelStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kBoldTextStyle,
                        ),
                        Text(
                          ' cm',
                          style: kTextLabelStyle,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Color(0xFFEB1555),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0xFFEB1555),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 15),
                        ),
                        child: Slider(
                          //activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          value: height.toDouble(),
                          min: 100,
                          max: 250,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReUsableCard(
                      colour: kActiveWidgetColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'WEIGHT',
                            style: kTextLabelStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: kBoldTextStyle,
                              ),
                              Text(
                                ' kgs',
                                style: kTextLabelStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SquareButton(
                                side: 'left',
                                iconData: FontAwesomeIcons.minus,
                                pressButton: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              //SizedBox(width: 1,),
                              SquareButton(
                                side: 'right',
                                iconData: FontAwesomeIcons.plus,
                                pressButton: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReUsableCard(
                      colour: kActiveWidgetColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'AGE',
                            style: kTextLabelStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kBoldTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SquareButton(
                                side: 'left',
                                iconData: FontAwesomeIcons.minus,
                                pressButton: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              //SizedBox(width: 1,),
                              SquareButton(
                                side: 'right',
                                iconData: FontAwesomeIcons.plus,
                                pressButton: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            NewWidget(buttonDesc: 'CALCULATE',onTap: () {
              BmiCalculate callc = BmiCalculate(weight: weight,height: height);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage(value: callc.Bmivalue(),interpretation: callc.BmiInterpretation(),meaning: callc.BmiMeaning());
              },),);
              //Navigator.push(context, MaterialPageRoute(builder: (context){return Screen2();}));
            },)
          ],
        ),);
  }
}


/*
Container(
// height: 200,
// width:  170,
margin: EdgeInsets.all(15),
decoration: BoxDecoration(
color: Color(0xFF1D1E33),
borderRadius: BorderRadius.circular(10)
),

)
*/
/* floatingActionButton: Theme(
        data: ThemeData(
          accentColor: Colors.teal,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),*/
