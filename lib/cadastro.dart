import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/background.jpg',
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          children: [
            Text(
              "FinX,",
              style: TextStyle(
                fontFamily: 'NotoSans',
                color: Colors.deepPurpleAccent,
              ),
            ),
            Text(
              "Escolhas inteligentes para o seu bolso",
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'NotoSans',
                color: Colors.white,
              ),
            )
          ],

        )
      ],
    );
  }
}
