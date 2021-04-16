import 'package:flutter/material.dart';

import '../../Cores.dart';

class ConvidarAmigos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customBg,
        title: Text(
          'Convidar amigos',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 70),
          child: Center(
            child: Container(
              width: 350,
              height: 600,
              decoration: BoxDecoration(
                  color: customPurple,
                  borderRadius: const BorderRadius.all(Radius.circular(18))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 20.0),
                    child: Text(
                      'Ganhe 1 centavo para cada amigo que convidar!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoSans',
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, right: 8.0, left: 20.0),
                    child: Text(
                      'Chame seus amigos para utilizar o aplicativo eu imploro!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoSans',
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
