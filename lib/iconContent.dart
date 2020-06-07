import 'package:flutter/material.dart';
import 'constants.dart';

// ignore: camel_case_types
class iconContent extends StatelessWidget {
  iconContent({@required this.iconName, @required this.textInput});
  final IconData iconName;
  final String textInput;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textInput,
          style: kTextLabelStyle,
        )
      ],
    );
  }
}
