import 'package:flutter/material.dart';
import 'constants.dart';

class NewWidget extends StatelessWidget {
  NewWidget({this.onTap,this.buttonDesc});
  final Function onTap;
  final String buttonDesc;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              buttonDesc,
              style: kLargeButton,
            )),
        decoration: BoxDecoration(
            color: kBottomContainerButtonColor,
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(15),
        width: double.infinity,
        height: 80,
        //padding: EdgeInsets.only(bottom: 5),
      ),
    );
  }
}
