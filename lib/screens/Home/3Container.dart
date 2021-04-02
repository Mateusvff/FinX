import 'package:flutter/material.dart';

class ExtratoBanco extends StatefulWidget {
  @override
  _ExtratoBancoState createState() => _ExtratoBancoState();
}

class _ExtratoBancoState extends State<ExtratoBanco> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 383,
      height: 112,
      /*--------------------------- Terceiro Container (EXTRATO DA CONTA BANCARIA)--------------------*/
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(25))),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5.0),
              child: Text(
                'Extrato da conta (Nubank)',
              ),
            ),
          ),
          Text('Mês'),
          Text('Comedia'),
          Text('Noia'),
        ],
      ),
    );
  }
}
