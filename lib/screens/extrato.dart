import 'package:flutter/material.dart';

class Extrato extends StatefulWidget {
  @override
  _ExtratoState createState() => _ExtratoState();
}

class _ExtratoState extends State<Extrato> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Extrato',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontWeight: FontWeight.bold,
            color: Color(0xff7524ff),
          ),
        ),
      ),
      color: Color(0xff131b26),
    );
  }
}
