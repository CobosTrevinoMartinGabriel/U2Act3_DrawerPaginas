import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(255, 111, 89, 1),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topCenter, //to align its child
        child: Container(
          margin: EdgeInsets.all(30),
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: new LinearGradient(
              colors: [
                Color.fromRGBO(37, 68, 65, 1),
                Color.fromRGBO(67, 170, 139, 1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.25, 0.90],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff0f2b1b),
                offset: Offset(-12, 12),
                blurRadius: 8,
              ),
            ],
          ),
          alignment: Alignment.centerLeft, //to align its child
          padding: EdgeInsets.all(20),
          child: Text(
            'Challenge',
            style: TextStyle(
              fontSize: 46,
              color: Color(0xffedecda),
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic,
            ),
          ),
        ));
  }
}
