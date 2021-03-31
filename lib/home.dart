import 'package:flutter/material.dart';

const customBg = const Color(0xff131b26); // Nosso BackGround
const customPurple = const Color(0xff7524ff); // Cor Principal
const customRed = const Color(0xfff03244); // Vermelho Customizado
const customCyan = const Color(0xff00d5e2); // Ciano Customizado
const customPink = const Color(0xfffc00e3); // Rosa Customizado

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
          children: [
            Container(
              // Primeiro Container (PRINCIPAL)
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(5.0, 25.0, 5.0, 25.0),
                    padding:
                        const EdgeInsets.fromLTRB(190.0, 120.0, 190.0, 120.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [],
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
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
                    child: CircleAvatar(
                      backgroundColor:
                          Colors.grey, // Adicionar Foto do Usuario (Firebase)
                      radius: 30.0,
                    ),
                  )),
                ],
              ),
            ),
            Container(
              // Segundo Container (INFO CARTOES)
              margin: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
              padding: const EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 60.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(25))),
            ),
            Container(
              // Terceiro Container (EXTRATO DA CONTA BANCARIA)
              margin: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
              padding: const EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 60.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(25))),
            ),
            Container(
              // Quarto Container (CARTOES/EXTRATO/CATEGORIAS)
              margin: const EdgeInsets.fromLTRB(55.0, 20.0, 55.0, 20.0),
              padding: const EdgeInsets.all(5.0),
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
            )
          ],
        ),
      ),
    );
  }
}
