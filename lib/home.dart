import 'package:flutter/material.dart';

const customBg = const Color(0xff131b26); // Nosso BackGround
const customPurple = const Color(0xff7524ff); // Cor Principal
const customRed = const Color(0xfff03244); // Vermelho Customizado
const customCyan = const Color(0xff00d5e2); // Ciano Customizado
const customPink = const Color(0xfffc00e3); // Rosa Customizado
const customGrey = const Color(0xffc4c4c4); // Cinza Customizado

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold a ser buildado
      backgroundColor: customBg,
      appBar: AppBar(
        // Barra Inicial
        title: Text(
          'Seja Bem Vindo,\n Carlos', // Adicionar Nome do Usuario (Firebase)
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        backgroundColor: customBg,
        actions: [
          IconButton(
            icon: Icon(Icons.settings_outlined),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        // Scroll
        child: Column(
          // Coluna Principal
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(14.0, 20.0, 14.0, 47.0),
                  child: Container(
                    width: 383.0,
                    height: 226.0,
                    padding:
                        const EdgeInsets.fromLTRB(190.0, 120.0, 190.0, 120.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.black,
                        ),
                        Text(
                          'Mês atual',
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.black)
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment(0.0, 0.85),
                  child: CircleAvatar(
                    backgroundColor: customPurple,
                    radius: 30.0,
                    child: IconButton(
                      icon: Icon(Icons.add),
                      iconSize: 40.0,
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                )),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: CircleAvatar(
                      backgroundColor:
                          customGrey, // Adicionar Foto do Usuario (Firebase)
                      radius: 30.0,
                    ),
                  ),
                )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 50.0),
              child: Container(
                width: 383,
                height: 112,
                // Segundo Container (INFO CARTOES)
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(-0.8, 0.0),
                      child: Text("Cartão de crédito (banco)"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 71.0),
              child: Container(
                width: 383,
                height: 112,
                // Terceiro Container (EXTRATO DA CONTA BANCARIA)
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 16.0),
              child: Container(
                width: 300,
                height: 50,
                // Quarto Container (CARTOES/EXTRATO/CATEGORIAS)
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: TextButton(
                          child: Text('Cartões',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: TextButton(
                          child: Text('Extrato',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: TextButton(
                          child: Text(
                            'Categorias',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {},
                        ),
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
