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
          'assets/fundo.jpg',
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 5),
              child:
              Text(
                "FinX,",
                style: TextStyle(
                  fontSize: 45.0,
                  fontFamily: 'NotoSans',
                  color: Color(0xFF6725D6),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:
              Text(
                "Escolhas inteligentes para o seu bolso",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'NotoSans',
                  color: Colors.white,

                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
