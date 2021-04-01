import 'package:flutter/material.dart';

class extrato extends StatefulWidget {
  @override
  _extratoState createState() => _extratoState();
}

class _extratoState extends State<extrato> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Extrato',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff7524ff),
          ),
        ),
      ),
      color: Color(0xff131b26),
    );
  }
}
