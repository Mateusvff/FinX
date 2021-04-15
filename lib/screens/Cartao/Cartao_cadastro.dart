import 'package:flutter/material.dart';
import 'package:projeto_flutter/Cores.dart';

class CartaoCad extends StatefulWidget {
  @override
  _CartaoCadState createState() => _CartaoCadState();
}

class _CartaoCadState extends State<CartaoCad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customBg,
        title: Text(
          'Cadastrar Cartão',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                child: Icon(
                  Icons.credit_card_outlined,
                  color: Colors.grey,
                  size: 300,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
