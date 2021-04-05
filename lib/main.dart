import 'package:flutter/material.dart';
import 'cadastro.dart';

void main() {
  runApp(MaterialApp(
    home: Cadastro(),
    theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black)),
    debugShowCheckedModeBanner: false,
  ));
}
