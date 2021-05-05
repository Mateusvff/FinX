import 'package:flutter/material.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../Cores.dart';

class CadastroReceita extends StatefulWidget {
  @override
  _CadastroReceitaState createState() => _CadastroReceitaState();
}

class _CadastroReceitaState extends State<CadastroReceita> {
  final contReceita =
      MoneyMaskedTextController(decimalSeparator: ',', thousandSeparator: '.');
  TextEditingController contData = TextEditingController();
  TextEditingController contConta = TextEditingController();
  TextEditingController contDesc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customBg,
        title: Text(
          'Adicionar receita',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 15, top: 140, bottom: 20, right: 15),
              child: TextFormField(
                controller: contReceita,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  prefix: Text("R\$"),
                  prefixStyle: TextStyle(color: Colors.white, fontSize: 18),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  labelText: "Valor Recebido",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 95),
              child: Container(
                width: 410,
                height: 350,
                decoration: BoxDecoration(
                  color: customPurple,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(22.0),
                    topLeft: Radius.circular(22.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        controller: contData,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          labelText: "Data ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        controller: contConta,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Dinheiro ou cartão ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        controller: contDesc,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Descrição",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: customPink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () async {
                        String receita = contReceita.text;
                        String dia = contData.text;
                        String conta = contConta.text;
                        String desc = contDesc.text;

                        Map<String, dynamic> data = {
                          "valor": receita,
                          "data": dia,
                          "conta": conta,
                          "desc": desc
                        };

                        await FirebaseFirestore.instance
                            .collection('users')
                            .doc(FirebaseAuth.instance.currentUser.uid)
                            .collection('receitas')
                            .doc()
                            .set(data);
                      },
                      child: Text(
                        "Concluído",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
