import 'package:flutter/material.dart';
import '../Cores.dart';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List<bool> _selections = [false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        backgroundColor: customBg,
        title: Text(
          'Categorias',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: ToggleButtons(
              children: [
                Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                      color: customPink,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child:
                      Text('Receitas', style: TextStyle(color: Colors.white)),
                ),
                Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                      color: customPurple,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child:
                      Text('Despesas', style: TextStyle(color: Colors.white)),
                )
              ],
              isSelected: _selections,
            )),
          ],
        ),
      ),
    );
  }
}
