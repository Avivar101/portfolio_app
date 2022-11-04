import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        SizedBox(height: 10,),
        Text(
          "About Me",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15
            )
        ),
        SizedBox(height: 12),
        Text("My name is Okezie Ben-John, currently learning app development using the flutter"
            "framework, I have also been coding with python for some years now, but never"
            "actually done any work commercially",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 15
            )
        ),
        SizedBox(height: 22,),
        Text("What I can do for You",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15
            )
        ),
        SizedBox(height: 12),
        Text("I can build pixel-perfect screen designs base on given design,"
            "quickly build a basic prototype app in flutter which can be used"
            "for testing and iterations with simple API integration into the app",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 15
            )
        )
      ],
    );
  }
}