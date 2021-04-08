import 'package:flutter/material.dart';
import 'package:projeto_flutter/Widgets/calendar.dart';
import '../Cores.dart';

class Extrato extends StatefulWidget {
  @override
  _ExtratoState createState() => _ExtratoState();
}

class _ExtratoState extends State<Extrato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        backgroundColor: customBg,
        title: Text(
          'vai se fuder thiag',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: customGrey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Calendar(),
            ),
            Text(
              'extrato',
              style: TextStyle(fontWeight: FontWeight.bold, color: customGrey),
            ),
          ],
        ),
      ),
    );
  }
}
