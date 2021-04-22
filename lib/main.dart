import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'cadastro.dart';
import 'cores.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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

/*height: 50,
          width: 140,
          decoration: BoxDecoration(
              color: customPink,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),*/
