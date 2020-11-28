import 'package:flutter/material.dart';
import 'package:practica3/auto.dart';
import 'package:practica3/autos.dart';
import 'package:practica3/models/AutoModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practica",
      home: AutosPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
