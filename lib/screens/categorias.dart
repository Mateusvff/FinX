import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Categorias',
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
