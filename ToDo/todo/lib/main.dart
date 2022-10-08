import 'package:flutter/material.dart';

import 'Screens/Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InSoil',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Welcome(),
    );
  }
}
