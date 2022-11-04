import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../widgets/profile_widget.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    return Material(
      child: SlidingUpPanel(
        backdropEnabled: false,
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        body: Scaffold(
          body:  ProfileDetails(),
        ),
        borderRadius: radius,
        minHeight: MediaQuery.of(context).size.height * 0.5,
      ),
    );
  }
}