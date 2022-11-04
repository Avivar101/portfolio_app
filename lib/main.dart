import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/home_screen.dart';
import 'package:portfolio_app/themes.dart';

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
      theme: themeData(context),
      themeMode: ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}
