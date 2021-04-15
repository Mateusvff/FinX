import 'package:flutter/material.dart';
import 'package:projeto_flutter/Widgets/calendario.dart';
import '../Cores.dart';

class Extrato extends StatefulWidget {
  @override
  _ExtratoState createState() => _ExtratoState();
}

class _ExtratoState extends State<Extrato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customBg,
        title: Text(
          'Extrato',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'NotoSans',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Container(
                width: 210,
                height: 60,
                decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: const BorderRadius.all(Radius.circular(18))),
                child: Calendario(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170.0),
              child: Container(
                width: 410,
                height: 485,
                decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(22.0),
                      topLeft: Radius.circular(22.0),
                    )),
                child: Column(
                  children: [
                    Text(
                      'Informações do dia',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoSans',
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
