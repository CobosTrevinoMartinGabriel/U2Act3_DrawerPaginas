import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  int level = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xfffc8c57),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xc6d78b17),
            offset: Offset(9, 9),
            blurRadius: 6,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        textAlign: TextAlign.center,
        'Siempre busca un nuevo reto, los premios por ellos no valen nada. \n La pelea lo es todo',
        style: TextStyle(
          fontSize: 18,
          color: Color(0xff931818),
        ),
      ),
    );
  }
}
