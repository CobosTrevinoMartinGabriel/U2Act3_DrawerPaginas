import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatefulWidget {
  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 39, 45, 45),
        borderRadius: BorderRadius.circular(15.0),
      ),
      width: 250,
      height: 250,
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 35, 206, 107),
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 100,
      ),
    );
  }
}
