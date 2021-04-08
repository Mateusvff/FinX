import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'cores.dart';

void main() {

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cadastro(),
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: customBg),
      ),
    ),
  );
}
