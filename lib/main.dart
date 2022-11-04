import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Benji',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        padding: EdgeInsets.all(8.0),
          color: Colors.black,
          child: const MyHomePage(),
      ),
    );
  }
}
