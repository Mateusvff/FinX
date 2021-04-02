import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:projeto_flutter/Drawer/Custom_Drawer.dart';
import 'cartoes.dart';
import 'extrato.dart';
import 'categorias.dart';
import '../Cores.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold a ser buildado
      endDrawer: CustomDrawer(),
      backgroundColor: customBg,
      appBar: AppBar(
        // Barra Inicial
        actions: <Widget>[
          //Mudando o icone do EndDrawer
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.settings_outlined),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
        title: Text(
          'Seja Bem Vindo,\n Wesley Gonzaga',
          /* Adicionar Nome do Usuario (Firebase) */
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        backgroundColor: customBg,
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
                    /*------------PRIMEIRO CONTAINER (Extrato MÊS)------------------*/
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios_rounded),
                              color: Colors.black,
                              iconSize: 18,
                              onPressed: () {}, /* Mes Passado */
                            ),
                            Text(
                              'Mês atual',
                              /* Puxar de acordo com o mes atual */
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios_rounded),
                              color: Colors.black,
                              iconSize: 18,
                              onPressed: () {}, /* Proximo Mes */
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Saldo em conta',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            IconButton(
                              icon: Icon(Icons.remove_red_eye_sharp),
                              color: Colors.black,
                              iconSize: 18,
                              onPressed:
                                  () {}, /* Tampar o saldo do usuario ou Mostrar o saldo do usuario*/
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('R\$10,000,00',
                                /* Puxar do usuario de acordo com Receita - Despesa */
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Receitas ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              ' Despesas',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'R\$15.000,00 ',
                              /* Puxar do Add Receitas */
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'R\$5.000,00 ',
                              /* Puxar do Add Despesas */
                              style: TextStyle(
                                  color: customRed,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
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
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 265,
                                decoration: BoxDecoration(
                                    color: customPurple,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                              );
                            });
                      }, /* Abre container de Adicionar Despesa ou Receita */
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
                /*--------------------- Segundo Container (INFO CARTOES)----------------------*/
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 5.0),
                        child: Text(
                          "Cartão de crédito (banco)",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: LinearPercentIndicator(
                        width: 300.00,
                        lineHeight: 12.0,
                        percent: 0.5,
                        backgroundColor: Colors.grey,
                        progressColor: customPurple,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 40.0),
                        child: Text(
                          "Limite disponível: R\$ xxx,xx",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                        child: Text(
                          "Fechamento da fatura: xx/xx/xxxx",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 16.0),
              child: Container(
                width: 300,
                height: 50,
                /*---------------- Quarto Container (CARTOES/EXTRATO/CATEGORIAS)----------------------------------*/
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => Cartoes(),
                              ),
                            );
                          },
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => Extrato(),
                              ),
                            );
                          },
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => Categorias(),
                              ),
                            );
                          },
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
