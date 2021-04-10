import 'package:flutter/material.dart';
import '../Cores.dart';

class Cartoes extends StatefulWidget {
  @override
  _CartoesState createState() => _CartoesState();
}

class _CartoesState extends State<Cartoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        backgroundColor: customBg,
        title: Text(
          'Cartões',
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
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: const BorderRadius.all(Radius.circular(18))),
                child: TextButton(
                  child: Text(
                    'Adicionar cartão',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSans',
                        color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: const BorderRadius.all(Radius.circular(18))),
                child: TextButton(
                  child: Text(
                    'Remover cartão',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSans',
                        color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Container(
                height: 450,
                width: 400,
                decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(22.0),
                      topLeft: Radius.circular(22.0),
                    )),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Text(
                        'Visa black (Banco do Brasil)',
                        style: TextStyle(
                            color: customCyan,
                            fontFamily: 'NotoSans',
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'MasterCard (Banco do Brasil)',
                        style: TextStyle(
                            color: customRed,
                            fontFamily: 'NotoSans',
                            fontSize: 18),
                      ),
                    ),
                    Text(
                      'Visa Platinum (Santander)',
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          fontFamily: 'NotoSans',
                          fontSize: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'Crédito Universitário (Nubank)',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'NotoSans',
                            fontSize: 18),
                      ),
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
