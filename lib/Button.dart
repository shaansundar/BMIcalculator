import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  SquareButton({this.side, this.iconData, this.pressButton});
  final String side;
  final IconData iconData;
  final Function pressButton;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: pressButton,
      child: Icon(iconData),
      constraints: BoxConstraints.expand(height: 40,width: 86),
      shape: RoundedRectangleBorder(borderRadius: side=='left'?BorderRadius.only(bottomLeft: Radius.circular(10)):BorderRadius.only(bottomRight: Radius.circular(10))),
      fillColor: Color(0xFFEB1555),
    );
  }
}
