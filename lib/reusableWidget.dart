import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  ReUsableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
// height: 200,
// width:  170,
      margin: EdgeInsets.all(15),
      decoration:
      BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}