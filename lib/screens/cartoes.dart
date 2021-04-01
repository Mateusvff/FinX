import 'package:flutter/material.dart';

class cartoes extends StatefulWidget {
  @override
  _cartoesState createState() => _cartoesState();
}

class _cartoesState extends State<cartoes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Cartões',
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
