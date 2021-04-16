import 'package:flutter/material.dart';
import 'package:projeto_flutter/Cores.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CartaoCad extends StatefulWidget {
  @override
  _CartaoCadState createState() => _CartaoCadState();
}

class _CartaoCadState extends State<CartaoCad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customBg,
        title: Text(
          'Cadastrar Cartão',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 8),
              child: Container(
                child: Icon(
                  MdiIcons.creditCardPlusOutline,
                  color: Colors.grey,
                  size: 250,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, top: 30, bottom: 20),
              child: TextFormField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
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
                  labelText: "Limite de Crédito (R\$)",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
            ),
            Container(
              height: 440,
              width: 410,
              decoration: BoxDecoration(
                  color: customPurple,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(22.0),
                    topLeft: Radius.circular(22.0),
                  )),
              child: Text(
                'data',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
