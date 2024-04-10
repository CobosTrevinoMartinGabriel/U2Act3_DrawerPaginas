import 'package:flutter/material.dart';

class AterrizajePag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Color(0xff05d5ba),
            width: 10,
          ),
        ),
        width: 280,
        height: 280,
        alignment: Alignment.center,
        child: Text(
          'X',
          style: TextStyle(
            fontSize: 180,
            color: Color(0xff0f0200),
          ),
        ),
      ),
    ));
  }
}
