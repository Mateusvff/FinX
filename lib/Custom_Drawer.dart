import 'package:flutter/material.dart';
import 'Cores.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [customBg, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        );
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      child: Drawer(
        child: Stack(
          children: <Widget>[
            _buildDrawerBack(),
            ListView(
              padding: EdgeInsets.only(left: 32.0),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                  height: 170.0,
                  child: Stack(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
