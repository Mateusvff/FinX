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
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'Adicionar cartão',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSans',
                      color: customGrey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'Remover cartão',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSans',
                      color: customGrey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Container(
                  height: 480,
                  width: 400,
                  decoration: BoxDecoration(
                      color: customPurple,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(22.0),
                        topLeft: Radius.circular(22.0),
                      )),
                  child: Column(
                    children: [
                      Text(
                        'Cartão x (banco y)',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'NotoSans',
                            fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          'Cartão x (banco y)',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'NotoSans',
                              fontSize: 18),
                        ),
                      ),
                      Text(
                        'Cartão x (banco y)',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'NotoSans',
                            fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          'Cartão x (banco y)',
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
      ),
    );
  }
}
