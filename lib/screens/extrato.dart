import 'package:flutter/material.dart';
import 'home.dart';

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
        title: Center(
          child: Text(
            'Extrato',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              color: customGrey,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
