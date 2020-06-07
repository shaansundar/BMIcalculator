import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusableWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';
//import 'brain.dart';


class ResultPage extends StatelessWidget {
  ResultPage({@required this.interpretation,@required this.meaning,@required this.value});
  final String interpretation;
  final String meaning;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      'Your Result',
                      style: kTitletext,
                    ),
                  ),
                ) ),
            Expanded(
                flex: 5,
                child: ReUsableCard(
                    colour: kActiveWidgetColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(interpretation,style: kResulttext,),
                        Text(value,style: kResultNumber,),
                        Text(meaning,style: TextStyle(fontSize: 24),textAlign: TextAlign.center,)

                      ],
                    ),
                )
            ),
            NewWidget(buttonDesc: 'RE-CALCULATE',onTap: () {
              Navigator.pop(context);
              }),
              //Navigator.push(context, MaterialPageRoute(builder: (context){return Screen2();}));
          ],
        )
    );
  }
}
