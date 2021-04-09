import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Cores.dart';

class ExtratoMes extends StatefulWidget {
  @override
  _ExtratoMesState createState() => _ExtratoMesState();
}

class _ExtratoMesState extends State<ExtratoMes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 383.0,
      height: 226.0,
      /*------------PRIMEIRO CONTAINER (Extrato MÊS)------------------*/
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(25))),
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
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
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
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text(
                  'Saldo em conta',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: IconButton(
                  alignment: Alignment.topRight,
                  icon: Icon(Icons.remove_red_eye_sharp),
                  color: Colors.black,
                  iconSize: 18,
                  onPressed:
                      () {}, /* Tampar o saldo do usuario ou Mostrar o saldo do usuario*/
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('R\$10.000,00',
                  /* Puxar do usuario de acordo com Receita - Despesa */
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 60.0, top: 10.0),
                child: Text(
                  'Receitas ',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 60.0),
                child: Text(
                  ' Despesas',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 50.0, top: 5.0),
                child: Text(
                  'R\$15.000,00 ',
                  /* Puxar do Add Receitas */
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 50.0),
                child: Text(
                  'R\$5.000,00 ',
                  /* Puxar do Add Despesas */
                  style:
                      TextStyle(color: customRed, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
