import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'cadastro.dart';
import 'cores.dart';

void main() {
  runApp(
    MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate, //funções para o calendário
      ],
      supportedLocales: [Locale("pt", "BR")], //calendário em pt
      debugShowCheckedModeBanner: false,
      home: Cadastro(),
      theme: ThemeData(
        fontFamily: 'NotoSans',
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: customBg),
      ),
    ),
  );
}
