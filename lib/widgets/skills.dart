import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Text(
          "My Current Skills",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15
            )
        ),
        Row(
          children: <Widget>[
            IconButton(
                icon: const FaIcon(FontAwesomeIcons.earlybirds),
                onPressed: () { print("Pressed"); },
              color: Colors.black,
            ),
            const Text(
                "Flutter",
                style: TextStyle(
                color: Colors.black,
                fontSize: 15
              )
            )
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(
                icon: const FaIcon(FontAwesomeIcons.python),
                onPressed: () { print("Pressed"); },
              color: Colors.black,
            ),
            const Text(
                "Python",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                )
            )
          ],
        )
      ],
    );
  }
}