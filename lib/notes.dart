import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffd90c0c), width: 5.7),
        color: Color(0xff141414),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          bottomLeft: Radius.circular(40.0),
        ),
      ),
      child: Text(
        'No me importa la justicia, y no recuerdo nunca haberme llamado a mí mismo un héroe... Siempre he luchado solo por la gente en que yo creo. No voy a dudar... Si un enemigo aparece frente a mí. ¡Lo destruiré! \n\n -Zero (Megaman Zero 4)',
        style: TextStyle(
          fontSize: 22,
          color: Color(0xff0fdeb1),
        ),
      ),
    );
  }
}
