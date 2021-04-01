import 'package:flutter/material.dart';

class categorias extends StatefulWidget {
  @override
  _categoriasState createState() => _categoriasState();
}

class _categoriasState extends State<categorias> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Categorias',
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
