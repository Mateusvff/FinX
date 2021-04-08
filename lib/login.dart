import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'Cores.dart';
import 'package:projeto_flutter/cadastro.dart';
import 'package:projeto_flutter/screens/Home/home.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseUser _currentUser;

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.onAuthStateChanged.listen((user) {
      setState(() {
        _currentUser = user;
      });
    });
  }

  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<FirebaseUser> _getUser() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);
      final AuthResult authResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final FirebaseUser user = authResult.user;
    } catch (error) {}
  }

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/bg_login.png",
              fit: BoxFit.cover,
              height: 500
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Cadastro()));
                    },
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          'Voltar',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NotoSans',
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                  child: Text(
                    "Finx",
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSans',
                      color: customPurple,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                  child: Text(
                    "Seu mais novo assistente financeiro",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSans',
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 292.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        width: 500.0,
                        height: 255.0,
                        decoration: BoxDecoration(
                          color: customPurple,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(22.0),
                            topLeft: Radius.circular(22.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 30.0),
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
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(22.0),
                                      topLeft: Radius.circular(22.0),
                                      bottomLeft: Radius.circular(22.0),
                                      bottomRight: Radius.circular(22.0),
                                    ),
                                  ),
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: TextField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration.collapsed(
                                        hintText: 'Email',
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'NotoSans',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
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
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(22.0),
                                            topLeft: Radius.circular(22.0),
                                            bottomLeft: Radius.circular(22.0),
                                            bottomRight: Radius.circular(22.0),
                                          ),
                                        ),
                                        child: FlatButton(
                                          onPressed: () {},
                                          child: TextField(
                                            keyboardType:
                                                TextInputType.visiblePassword,
                                            decoration:
                                                InputDecoration.collapsed(
                                              hintText: 'Senha',
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'NotoSans',
                                              ),
                                            ),
                                            obscureText: _obscureText,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 270),
                                        child: Container(
                                          width: 80,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(22.0),
                                              topLeft: Radius.circular(22.0),
                                              bottomLeft: Radius.circular(22.0),
                                              bottomRight:
                                                  Radius.circular(22.0),
                                            ),
                                          ),
                                          child: FlatButton(
                                            onPressed: _toggle,
                                            child: Text(
                                              _obscureText ? "Show" : "Hide",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'NotoSans',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
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
                                    color: customPink,
                                  ),
                                  child: FlatButton(
                                    onPressed: () {
                                      _getUser();

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Home(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "Continuar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'NotoSans',
                                      ),
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(160, 440, 0, 0),
              child: Icon(
                Icons.account_circle_sharp,
                size: 80,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
