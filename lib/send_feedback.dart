import 'package:flutter/material.dart';

class SendFeedbackPage extends StatefulWidget {
  @override
  _SendFeedbackPageState createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffdb46ff),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xafff00c9),
            offset: Offset(7, 7),
            blurRadius: 6,
          ),
        ],
      ),
      child: Text(
        'Si eres poderoso, siempre estarás ciego a lo que ocurre a tu alrededor',
        style: TextStyle(
          fontSize: 38,
          color: Color(0xff8e049a),
        ),
      ),
    );
  }
}
