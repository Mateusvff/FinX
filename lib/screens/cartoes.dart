import 'package:flutter/material.dart';
import 'home.dart';

class Cartoes extends StatefulWidget {
  @override
  _CartoesState createState() => _CartoesState();
}

class _CartoesState extends State<Cartoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        backgroundColor: customBg,
        title: Center(
          child: Text(
            'Cartões',
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
