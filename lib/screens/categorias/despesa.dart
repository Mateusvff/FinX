import 'package:flutter/material.dart';

import '../../Cores.dart';

class Despesas extends StatefulWidget {
  @override
  _DespesasState createState() => _DespesasState();
}

class _DespesasState extends State<Despesas> {
  TextEditingController cont_desp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Container(
        width: 410,
        height: 540,
        decoration: BoxDecoration(
          color: customPurple,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.fastfood_sharp,
                    color: Colors.white,
                    size: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Alimentação',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'NotoSans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.yellow,
                    size: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Compras',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'NotoSans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.school_outlined,
                    color: Colors.blue,
                    size: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Educação',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'NotoSans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.house_outlined,
                    color: Colors.deepOrange,
                    size: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Moradia',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'NotoSans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.directions_car_outlined,
                    color: Colors.green,
                    size: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Transporte',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'NotoSans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.local_hospital_outlined,
                    color: Colors.red,
                    size: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Saúde',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'NotoSans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 275.0),
                child: CircleAvatar(
                  backgroundColor: customPink,
                  radius: 30.0,
                  child: IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.white,
                    iconSize: 40.0,
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                                child: Container(
                              height: 390,
                              decoration: BoxDecoration(
                                  color: customPurple,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25.0, right: 145.0),
                                    child: Text(
                                      'Criar nova categoria',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'NotoSans',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                      decoration: InputDecoration(
                                        labelText: "Descrição",
                                        labelStyle: TextStyle(
                                            color: Colors.grey, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 15, 10, 10),
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                      decoration: InputDecoration(
                                        labelText: "Cor",
                                        labelStyle: TextStyle(
                                            color: Colors.grey, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 50),
                                    child: Container(
                                      height: 47,
                                      width: 145,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: customPink,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                        ),
                                        child: Text(
                                          "Concluído",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ));
                          });
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
