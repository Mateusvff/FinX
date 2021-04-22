import 'package:flutter/material.dart';

import '../../Cores.dart';

class CadastroReceita extends StatefulWidget {
  @override
  _CadastroReceitaState createState() => _CadastroReceitaState();
}

class _CadastroReceitaState extends State<CadastroReceita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customBg,
        title: Text(
          'Cadastro de receita',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text(
            'Valor recebido',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          )
        ],
      )),
    );
  }
}
