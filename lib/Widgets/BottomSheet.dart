import 'package:flutter/material.dart';

import '../Cores.dart';

class BottomShee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      decoration: BoxDecoration(
          color: customPurple,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                color: customPink,
                borderRadius: const BorderRadius.all(Radius.circular(25))),
          ),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                color: customPink,
                borderRadius: const BorderRadius.all(Radius.circular(25))),
          ),
          CircleAvatar(
            backgroundColor: customPink,
            child:
                IconButton(icon: Icon(Icons.close_rounded), onPressed: () {}),
          )
        ],
      ),
    );
  }
}
