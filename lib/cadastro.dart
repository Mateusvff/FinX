import 'dart:ui';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/fundo.jpg',
              fit: BoxFit.cover,
              height: 700.0,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
                  child: Text(
                    "FinX,",
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSans',
                      color: Color(0xff7524ff),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    "Escolhas inteligentes para o seu bolso",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSans',
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 415.0),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                    alignment: Alignment.bottomCenter,
                    color: Color(0xff7524ff),
                    width: 500.0,
                    height: 210.0,
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
