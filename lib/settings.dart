import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.all(75),
      decoration: BoxDecoration(
        color: Color(0xffffc546),
        shape: BoxShape.circle,
      ),
      width: 250,
      height: 250,
    );
  }
}
