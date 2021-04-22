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
              padding: const EdgeInsets.only(left: 30, bottom: 8),
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
              height: 350,
              width: 410,
              decoration: BoxDecoration(
                  color: customPurple,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(22.0),
                    topLeft: Radius.circular(22.0),
                  )),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        'Dia de vencimento',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0, left: 15, right: 300),
                    child: Container(
                      width: 350,
                      height: 42,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.75),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(22.0),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => customBg)),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Dia',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NotoSans',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25, left: 15),
                      child: Text(
                        'Nome do Cartão',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0, left: 15, right: 200),
                    child: Container(
                      width: 350,
                      height: 42,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.75),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(22.0),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => customBg)),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Nome',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NotoSans',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: CircleAvatar(
                        backgroundColor: customPink,
                        radius: 30.0,
                        child: IconButton(
                            icon: Icon(Icons.check),
                            color: Colors.white,
                            iconSize: 40.0,
                            onPressed: () {}),
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
