import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Cores.dart';

class ExtratoMes extends StatefulWidget {
  @override
  _ExtratoMesState createState() => _ExtratoMesState();
}

class _ExtratoMesState extends State<ExtratoMes> {
  bool visualizarSaldo = true;
  Icon visivel = Icon(Icons.visibility_outlined);
  Icon naoVisivel = Icon(Icons.visibility_off_outlined);

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
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: IconButton(
                  alignment: Alignment.topRight,
                  icon: visualizarSaldo
                      ? Icon(Icons.visibility_outlined)
                      : Icon(Icons.visibility_off_outlined),
                  color: Colors.black,
                  iconSize: 18,
                  onPressed: () =>
                      setState(() => visualizarSaldo = !visualizarSaldo),
                  /* Tampar o saldo do usuario ou Mostrar o saldo do usuario. Ao desativar vira visibility_off_outlined*/
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              visualizarSaldo
                  ? Text('R\$10.000,00',
                      /* Puxar do usuario de acordo com Receita - Despesa */
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold))
                  : Container(
                      width: 150,
                      height: 35,
                      decoration: BoxDecoration(
                          color: customGrey,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
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
                child: visualizarSaldo
                    ? Text(
                        'R\$15.000,00 ',
                        /* Puxar do Add Receitas */
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      )
                    : Container(
                        width: 80,
                        height: 15,
                        decoration: BoxDecoration(
                            color: customGrey,
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 65.0),
                child: visualizarSaldo
                    ? Text(
                        'R\$5.000,00 ',
                        /* Puxar do Add Despesas */
                        style: TextStyle(
                            color: customRed, fontWeight: FontWeight.bold),
                      )
                    : Container(
                        width: 80,
                        height: 15,
                        decoration: BoxDecoration(
                            color: customGrey,
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
